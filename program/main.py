import json
from stuff import *

datapack_id = 'temperature'

# Load everything in ./generator/ into memory to reduce time
generator = {
  'advancements': {
    'consumable': {
      'normal': open('./generator/advancements/consumable/normal.json').read().replace('<datapack_id>', datapack_id),
      'nbt': open('./generator/advancements/consumable/nbt.json').read().replace('<datapack_id>', datapack_id),
      'potion': open('./generator/advancements/consumable/potion.json').read().replace('<datapack_id>', datapack_id),
      'potion_nbt': open('./generator/advancements/consumable/potion_nbt.json').read().replace('<datapack_id>', datapack_id)
    },
    'find_biome': {
      'find_biome': open('./generator/advancements/find_biome/find_biome.json').read().replace('<datapack_id>', datapack_id)
    }
  },
  'functions': {
    'temp_calculation': {
      'biome': {
        'item': open('./generator/functions/temp_calculation/biome/item.mcfunction').read().replace('<datapack_id>', datapack_id)
      },
      'temp_source': {
        'armor': {
          'armor': open('./generator/functions/temp_calculation/temp_source/armor/armor.mcfunction').read().replace('<datapack_id>', datapack_id),
          'metal_armor': open('./generator/functions/temp_calculation/temp_source/armor/metal_armor.mcfunction').read().replace('<datapack_id>', datapack_id)
        },
        'block': {
          'item': open('./generator/functions/temp_calculation/temp_source/block/item.mcfunction').read().replace('<datapack_id>', datapack_id)
        },
        'blocks': open('./generator/functions/temp_calculation/temp_source/blocks.mcfunction').read().replace('<datapack_id>', datapack_id),
        'consumable': open('./generator/functions/temp_calculation/temp_source/consumable.mcfunction').read().replace('<datapack_id>', datapack_id)
      }
    }
  }
}
command = json.load(open('./generator/command.json'))

# Handle generating biome-related files
def biomes(raw, base):
  base_temperature = {x[0].lower(): x[2:] for x in base}
  data = [{'biome': i[0], 'id': i[1].lower(), 'sp_biome': i[2], 'temperature': i[3].lower(), 'humidity': i[4], 'value': i[4:]} for i in raw if i[3] is not '']
  unique = {i['temperature'][1:].lower(): i['value'] for i in data if '*' in i['temperature'] and i['humidity'] is not ''}
  for biome in data:
    with create_file('./output/advancements/find_biome/' + '/'.join(biome['id'].split(':')) + '.json') as f:
      f.write(generator['advancements']['find_biome']['find_biome'].replace('<biome>', biome['id']).replace('<biome_location>', '/'.join(biome['id'].split(':')) ))
    if biome['temperature'] in base_temperature:
      base_temp = base_temperature[biome['temperature']]
      with create_file('./output/functions/temp_calculation/biome/' + '/'.join(biome['id'].split(':')) + '.mcfunction') as f:
        lines = generator['functions']['temp_calculation']['biome']['item']
        lines = lines.replace('<sp_biome>', biome['sp_biome'])
        lines = lines.replace('<humidity>', base_temp[0])
        for n in range(1, 13):
          lines = lines.replace('<temperature_' + str(n) + '>', base_temp[n])
        f.write(lines)
    elif biome['temperature'][1:] in unique:
      base_temp = unique[biome['temperature'][1:]]
      with create_file('./output/functions/temp_calculation/biome/' + '/'.join(biome['id'].split(':')) + '.mcfunction') as f:
        lines = generator['functions']['temp_calculation']['biome']['item']
        lines = lines.replace('<sp_biome>', biome['sp_biome'])
        lines = lines.replace('<humidity>', base_temp[0])
        for n in range(1, 13):
          lines = lines.replace('<temperature_' + str(n) + '>', base_temp[n])
        f.write(lines)
    else:
      print('[Error] Failed to generate biome: ' + biome['id'])

# Handle armor-related files
def armor(raw):
  armor = [{'id': x[0], 'temperature': x[1], 'type': x[2].lower()} for x in raw['armor'] if x[2] is not '']
  metal_armor = [{'id': x[0], 'temperature': x[1].replace(' ', '').split(','), 'type': x[2], 'temp_range': x[3].replace(' ', '').split(',')} for x in raw['metal_armor'] if x[2] is not '']
  
  armor_types = ['helmet', 'chestplate', 'leggings', 'boots']
  armor_command = command['functions']['temp_calculation']['temp_source']['armor']
  armor_list ={'helmet': [], 'chestplate': [], 'leggings': [], 'boots': []}
  metal_armor_list ={'helmet': [], 'chestplate': [], 'leggings': [], 'boots': []}

  for item in armor:
    if item['type'] in armor_list:
      armor_list[item['type']].append(armor_command['armor'][item['type']].replace('<id>', item['id']).replace('<temperature>', item['temperature']))

  for item in metal_armor:
    if item['type'] in metal_armor_list:
      metal_armor_list[item['type']].append(armor_command['metal_armor'][item['type']].replace('<id>', item['id']).replace('<temperature_range>', '..' + item['temp_range'][0]).replace('<temperature>', item['temperature'][0]))
      metal_armor_list[item['type']].append(armor_command['metal_armor'][item['type']].replace('<id>', item['id']).replace('<temperature_range>', item['temp_range'][1] + '..').replace('<temperature>', item['temperature'][1]))

  for armor_type in armor_types:
    armor_list[armor_type] = '\n'.join(armor_list[armor_type])
    metal_armor_list[armor_type] = '\n'.join(metal_armor_list[armor_type])

  with create_file('./output/functions/temp_calculation/temp_source/armor/armor.mcfunction') as f:
    f.write(
      generator['functions']['temp_calculation']['temp_source']['armor']['armor']
      .replace('<helmet>', armor_list['helmet'])
      .replace('<chestplate>', armor_list['chestplate'])
      .replace('<leggings>', armor_list['leggings'])
      .replace('<boots>', armor_list['boots'])
    )
  
  with create_file('./output/functions/temp_calculation/temp_source/armor/metal_armor.mcfunction') as f:
    f.write(
      generator['functions']['temp_calculation']['temp_source']['armor']['metal_armor']
      .replace('<helmet>', metal_armor_list['helmet'])
      .replace('<chestplate>', metal_armor_list['chestplate'])
      .replace('<leggings>', metal_armor_list['leggings'])
      .replace('<boots>', metal_armor_list['boots'])
    )

# Main function
def generate():
  data = {
    'biome': getSheet('temperature_sheet', 'Biome Temperature', 2),
    'base_temp': getSheet('temperature_sheet', 'Base Temperature', 2),
    'armors': {
      'armor': getSheet('temperature_sheet', 'Armor Temperature', 1),
      'metal_armor': getSheet('temperature_sheet', 'Metal Armor Temperature', 1)
    }
  }
  biomes(data['biome'], data['base_temp'])
  armor(data['armors'])
  print('Program run successfully!')

generate()