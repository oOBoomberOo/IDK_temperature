const del = require('del');
const path = require('path');
const block = require('./block');
const biome = require('./biome');

const working_directory = path.join(__dirname, '..');
const output_directory = path.join(working_directory, 'out');

del.sync([path.join(output_directory, '**')]);
block.generate(working_directory, output_directory);
biome.generate(working_directory, output_directory);
