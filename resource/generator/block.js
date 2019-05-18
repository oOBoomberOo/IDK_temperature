const fs = require('fs');
const path = require('path');
const mkdirp = require('mkdirp');
const {promisify} = require('util');

const readFile = promisify(fs.readFile);
const readDir = promisify(fs.readdir);
const writeFile = promisify(fs.writeFile);

let function_path = '';
let block_path = '';

exports.generate = async function(working_directory, output_directory) {
	const d1 = new Date();
	console.log(`block(): Start generating files`);

	function_path = path.join(output_directory, 'functions', 'block');
	block_path = path.join(output_directory, 'functions', 'block', 'block');

	mkdirp.sync(function_path);
	mkdirp.sync(block_path);

	let file_block = readFile(path.join(working_directory, 'template', 'block', 'block.mcfunction')).catch(() => '');
	let result = await readFile(path.join(working_directory, 'src', 'blocks.json')).catch(() => '{}');
	let parsed = JSON.parse(result);
	let blocks = parsed.blocks;

	file_block = (await file_block).toString();

	let promises = [];
	for (let block of blocks) {
		let {id, size} = block;
		let out = path.join(block_path, `${id}.mcfunction`);
		
		let range = fillSize(id, size);

		let {setup, blocks, layers} = tempSetup(range, id);

		let write_block = file_block
			.replace(/<id>/g, id)
		 	.replace(/<setup>/g, setup.join('\n'))
		 	.replace(/<block>/g, blocks.join('\n'))
		 	.replace(/<calculation>/g, layers.join('\n'));

		await writeFile(out, write_block, {flag: 'w'});
		promises.push(block);
	}

	await Promise.all(promises);

	await finish(promises);

	const d2 = new Date();
	const dt = d2 - d1;
	console.log(`block(): Finished generating ${promises.length} files [${dt}ms]`);
	return dt;
}

async function finish(blocks) {
	const blocks_template = `function temperature:engine/get/block/<id>`;

	let file_blocks = readFile('template/block/blocks.mcfunction').catch(() => '');
	file_blocks = (await file_blocks).toString();

	let result = [];
	for (let block of blocks) {
		let item = blocks_template.replace(/<id>/g, block.id);
		result.push(item);
	}

	let out = path.join(function_path, `blocks.mcfunction`);
	let write_blocks = file_blocks
		.replace(`<blocks>`, result.join('\n'));
	return await writeFile(out, write_blocks, {flag: 'w'});

}

function tempSetup(range, id) {
	const layer_template = [
		`scoreboard players operation #cat.block.temp.stack bb.variable *= #cat.block.temp.gradient bb.config`,
		`scoreboard players operation #cat.block.temp.stack bb.variable /= #1000 bb.variable`,
		`scoreboard players operation #cat.block.temp<layer> bb.variable = #cat.block.count<layer> bb.variable`,
		`scoreboard players operation #cat.block.temp<layer> bb.variable *= #cat.block.<id>.temp bb.config`,
		`scoreboard players operation #cat.block.temp<layer> bb.variable *= #1000 bb.variable`,
		`scoreboard players operation #cat.block.temp<layer> bb.variable /= #cat.block.temp.stack bb.variable`
	];
	const layer_addition = `scoreboard players operation #cat.calculated.temp bb.variable += #cat.block.temp<layer> bb.variable`;

	let setup = [];

	for (let layer in range) {
		const template = `scoreboard players set #cat.block.count${encode_number(layer)} bb.variable 0`;
		setup.push(template);
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

	let layers = [];

	for (let layer in range) {
		for (let line of layer_template) {
			let result = line
				.replace(/<layer>/g, encode_number(layer))
				.replace(/<id>/g, id);
			layers.push(result);
		}
	}

	for (let layer in range) {
		let result = layer_addition
			.replace(/<layer>/g, encode_number(layer));
		layers.push(result);
	}

	return {setup: setup, blocks: blocks, layers: layers};
}

function fillSize(id, size) {
	const block_template = `execute if block ~<x> ~<y> ~<z> <id> run scoreboard players add <layer> bb.variable 1`;
	let result = {};
	for (let x = -size.x; x <= size.x; x++) {
		for (let y = -size.y; y <= size.y; y++) {
			for (let z = -size.z; z <= size.z; z++) {
				let item = block_template
					.replace('<x>', x)
					.replace('<y>', y)
					.replace('<z>', z)
					.replace('<id>', id);
				let layer = Math.floor(Math.sqrt(x*x + y*y + z*z));
				
				if (!result[layer]) {
					result[layer] = [];
				}
				
				result[layer].push(item);
			}
		}
	}

	return result;
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
