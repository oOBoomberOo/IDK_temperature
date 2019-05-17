const fs = require('fs');
const {promisify} = require('util');
const del = require('del');
const mkdirp = require('mkdirp');
const path = require('path');

const working_directory = 'out/';

let readFile = promisify(fs.readFile);
let writeFile = promisify(fs.writeFile);
let mkdir = promisify(mkdirp);

load();

async function load() {
	await del([path.join(working_directory, '**')]);
	block();
	biome();
}

async function biome() {
	const d1 = new Date();
	console.log(`biome(): Start generating files`);

	const adv_path = path.join(working_directory, 'advancements', 'biome');
	const fun_path = path.join(working_directory, 'functions', 'biome');

	await mkdir(adv_path);
	await mkdir(fun_path);

	let result_adv = readFile('template/biome/advancement.json').catch(() => '');
	let result_fun = readFile('template/biome/function.mcfunction').catch(() => '');
	let result = await readFile('biome.json').catch(() => '{}');
	let parsed = JSON.parse(result);
	let biomes = parsed.biome;

	result_adv = (await result_adv).toString();
	result_fun = (await result_fun).toString();

	let promises = [];
	for (let biome of biomes) {
		let {uid, id, temperature, time_multiplier} = biome;
		let out_adv = path.join(adv_path, `${id}.json`);
		let out_fun = path.join(fun_path, `${id}.mcfunction`);
		
		let write_adv = result_adv.replace(/<biome>/g, id);
		let write_fun = result_fun
			.replace('<uid>', uid)
			.replace('<temperature>', Math.floor(temperature * 1000))
			.replace('<multiplier>', Math.floor(time_multiplier * 1000))

		promises.push(writeFile(out_adv, write_adv, {flag: 'w'}));
		promises.push(writeFile(out_fun, write_fun, {flag: 'w'}));
	}

	await Promise.all(promises);
	const d2 = new Date();
	const dt = d2 - d1;
	console.log(`biome(): Finished generating ${promises.length} files [${dt}ms]`);
	return dt;
}

async function block() {
	const d1 = new Date();
	console.log(`block(): Start generating files`);

	const fun_path = path.join(working_directory, 'functions', 'block');
	const block_path = path.join(working_directory, 'functions', 'block', 'block');

	await mkdir(fun_path);
	await mkdir(block_path);

	let file_blocks = readFile('template/block/blocks.mcfunction').catch(() => '');
	let file_block = readFile('template/block/block.mcfunction').catch(() => '');

	let result = await readFile('blocks.json').catch(() => '{}');
	let parsed = JSON.parse(result);
	let blocks = parsed.blocks;

	let files = await Promise.all([file_block, file_blocks]);

	file_block = files[0].toString();
	file_blocks = files[1].toString();

	let promises = [];
	for (let block of blocks) {
		const block_template = `execute if block ~<x> ~<y> ~<z> <id> run scoreboard players add <layer> bb.variable 1`;
		const layer_template = [
			`scoreboard players operation #cat.block.temp.stack bb.variable *= #cat.block.temp.gradient bb.config`,
			`scoreboard players operation #cat.block.temp.stack bb.variable /= #1000 bb.variable`,
			`scoreboard players operation #cat.block.temp<layer> bb.variable = #cat.block.count<layer> bb.variable`,
			`scoreboard players operation #cat.block.temp<layer> bb.variable *= #cat.block.<id>.temp bb.config`,
			`scoreboard players operation #cat.block.temp<layer> bb.variable *= #1000 bb.variable`,
			`scoreboard players operation #cat.block.temp<layer> bb.variable /= #cat.block.temp.stack bb.variable`
		];
		const layer_addition = `scoreboard players operation #cat.calculated.temp bb.variable += #cat.block.temp<layer> bb.variable`;

		let {id, size} = block;
		let out = path.join(block_path, `${id}.mcfunction`);
		
		let range = {};
		for (let x = -size.x; x <= size.x; x++) {
			for (let y = -size.y; y <= size.y; y++) {
				for (let z = -size.z; z <= size.z; z++) {
					let item = block_template
						.replace('<x>', x)
						.replace('<y>', y)
						.replace('<z>', z)
						.replace('<id>', id);
					let layer = Math.floor(Math.sqrt(x*x + y*y + z*z));
					
					if (!range[layer]) {
						range[layer] = [];
					}
					
					range[layer].push(item);
				}
			}
		}

		let temp_setup = [];

		for (let layer in range) {
			const template = `scoreboard players set #cat.block.count${encode_number(layer)} bb.variable 0`;
			temp_setup.push(template);
		}

		let blocks = [];

		for (let layer in range) {
			const score = `#cat.block.count${encode_number(layer)}`;
			let items = range[layer];

			for (let item of items) {
				let result = item.replace('<layer>', score);
				blocks.push(result);
			}
		}

		let temp_layer = [];

		for (let layer in range) {
			for (let line of layer_template) {
				let result = line
					.replace(/<layer>/g, encode_number(layer))
					.replace(/<id>/g, id);
				temp_layer.push(result);
			}
		}

		for (let layer in range) {
			let result = layer_addition
				.replace(/<layer>/g, encode_number(layer));
			temp_layer.push(result);
		}


		let write_block = file_block
			.replace(/<id>/g, id)
		 	.replace(/<temp setup>/g, temp_setup.join('\n'))
		 	.replace(/<block>/g, blocks.join('\n'))
		 	.replace(/<temp calculation>/g, temp_layer.join('\n'));

		await writeFile(out, write_block, {flag: 'w'});
		promises.push(block);
	}

	await Promise.all(promises);

	const blocks_template = `function temperature:engine/get/block/<id>`;
	let function_list = [];
	for (let promise of promises) {
		let item = blocks_template.replace(/<id>/g, promise.id);
		function_list.push(item);
	}

	let out = path.join(fun_path, `blocks.mcfunction`);
	let write_blocks = file_blocks
		.replace(`<blocks>`, function_list.join('\n'));
	await writeFile(out, write_blocks, {flag: 'w'});

	const d2 = new Date();
	const dt = d2 - d1;
	console.log(`block(): Finished generating ${promises.length} files [${dt}ms]`);
	return dt;
}

function encode_number(string) {
	return string
		.replace(/1/g, '₁')
		.replace(/2/g, '₂')
		.replace(/3/g, '₃')
		.replace(/4/g, '₄')
		.replace(/5/g, '₅')
		.replace(/6/g, '₆')
		.replace(/7/g, '₇')
		.replace(/8/g, '₈')
		.replace(/9/g, '₉')
		.replace(/0/g, 'ₒ');
}