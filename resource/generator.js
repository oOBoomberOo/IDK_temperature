const fs = require('fs');
const {promisify} = require('util');
const del = require('del');
const mkdirp = require('mkdirp');
const path = require('path');

const biome_file = 'biome.json';
const template_advancement = 'template/advancement.json';
const template_function = 'template/function.mcfunction';
const working_directory = 'out/';

let readFile = promisify(fs.readFile);
let writeFile = promisify(fs.writeFile);
let mkdir = promisify(mkdirp);

load();

async function load() {
	console.log('Start generating files');
	let result_adv = readFile(template_advancement).catch(() => '');
	let result_fun = readFile(template_function).catch(() => '');
	let result = await readFile(biome_file).catch(() => '{}');
	let parsed = JSON.parse(result);
	let biomes = parsed.biome;

	await del([path.join(working_directory, '**')]);
	await mkdir(path.join(working_directory, 'advancements'));
	await mkdir(path.join(working_directory, 'functions'));

	result_adv = (await result_adv).toString();
	result_fun = (await result_fun).toString();

	let promises = [];
	for (let biome of biomes) {
		let {uid, id, temperature} = biome;
		let out_adv = path.join(working_directory, 'advancements', `${id}.json`);
		let out_fun = path.join(working_directory, 'functions', `${id}.mcfunction`);
		
		let write_adv = result_adv.replace(/<biome>/g, id);
		let write_fun = result_fun.replace('<uid>', uid).replace('<temperature>', Math.floor(temperature * 1000));

		promises.push(writeFile(out_adv, write_adv, {flag: 'w'}));
		promises.push(writeFile(out_fun, write_fun, {flag: 'w'}));
	}

	await Promise.all(promises);
	console.log(`Finished generating ${promises.length} files`);
}
