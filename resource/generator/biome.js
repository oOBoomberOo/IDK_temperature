const fs = require('fs');
const path = require('path');
const mkdirp = require('mkdirp');
const {promisify} = require('util');

const readFile = promisify(fs.readFile);
const readDir = promisify(fs.readdir);
const writeFile = promisify(fs.writeFile);

exports.generate = async function(working_directory, output_directory) {
	const d1 = new Date();
	console.log(`biome(): Start generating files`);

	const adv_path = path.join(output_directory, 'advancements', 'biome');
	const fun_path = path.join(output_directory, 'functions', 'biome');

	mkdirp.sync(adv_path);
	mkdirp.sync(fun_path);

	let result_adv = readFile(path.join(working_directory, 'template', 'biome', 'advancement.json')).catch(() => '');
	let result_fun = readFile(path.join(working_directory, 'template', 'biome', 'function.mcfunction')).catch(() => '');
	let result = await readFile(path.join(working_directory, 'src', 'biome.json')).catch(() => '{}');
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
