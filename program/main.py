#######################################
# Welcome everyone to my messy code!! #
#######################################

import json
from stuff import *
import pprint

datapack_id = 'temperature'

# Load everything in ./generator/ into memory to reduce time
generator = {
  'advancements': {
    'consumable': {
      'item': open('./generator/advancements/consumable/item.json').read().replace('<datapack_id>', datapack_id)
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
      'consumable': {
        'item': open('./generator/functions/temp_calculation/consumable/item.mcfunction').read().replace('<datapack_id>', datapack_id),
        'scoreboard': open('./generator/functions/temp_calculation/consumable/item.mcfunction').read().replace('<datapack_id>', datapack_id)
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
  armor_list = {
    'helmet': {armor_command['armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature']) for x in armor if x['type'] == 'helmet'}, 
    'chestplate': {armor_command['armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature']) for x in armor if x['type'] == 'chestplate'}, 
    'leggings': {armor_command['armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature']) for x in armor if x['type'] == 'leggings'}, 
    'boots': {armor_command['armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature']) for x in armor if x['type'] == 'boots'}
    }
  metal_armor_list = {
    'helmet': {armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][0]).replace('<temperature_range>', '..' + x['temp_range'][0]) + '\n' +
              armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][1]).replace('<temperature_range>', x['temp_range'][1] + '..') for x in metal_armor if x['type'] == 'helmet'}, 
    'chestplate': {armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][0]).replace('<temperature_range>', '..' + x['temp_range'][0]) + '\n' +
              armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][1]).replace('<temperature_range>', x['temp_range'][1] + '..') for x in metal_armor if x['type'] == 'chestplate'}, 
    'leggings': {armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][0]).replace('<temperature_range>', '..' + x['temp_range'][0]) + '\n' +
              armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][1]).replace('<temperature_range>', x['temp_range'][1] + '..') for x in metal_armor if x['type'] == 'leggings'}, 
    'boots': {armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][0]).replace('<temperature_range>', '..' + x['temp_range'][0]) + '\n' +
              armor_command['metal_armor'][x['type']].replace('<id>', x['id']).replace('<temperature>', x['temperature'][1]).replace('<temperature_range>', x['temp_range'][1] + '..') for x in metal_armor if x['type'] == 'boots'}
    }
  
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

def consumable(raw):
  items = [{'name': x[0], 'id': x[1].lower(), 'temperature': x[2], 'duration': x[3], 'type': x[4], 'temp_type': x[5], 'potion': x[6], 'nbt': x[7]} for x in raw]
  item_types = {i: [j for j in items if j['type'] == i] for i in set([x['type'] for x in items])} #{x['type']: [y for y in items if y['type'] is x['type']] for x in items}

  scoreboard_lists = []
  consumable_lists = []

  for item_type in item_types:
    if len(item_type) > 9:
      print('[' + item_type + ']', 'is too long!')
      item_type = item_type[0:9]
    scoreboard_lists.append('\n'.join(command['functions']['temp_calculation']['consumable']['scoreboard']).replace('<item_type>', item_type))
    consumable_lists.append('\n'.join(command['functions']['temp_calculation']['temp_source']['consumable']).replace('<item_type>', item_type))
    
    for item in item_types[item_type]:
      consumable_item = ',\n\t\t\t\t\t'.join([command['advancements']['consumable']['normal']] + [command['advancements']['consumable'][x] for x in item if x in command['advancements']['consumable'] and item[x].replace(' ', '') is not ''])
      consumable_item = consumable_item.replace('<id>', item['id']).replace('<nbt>', item['nbt']).replace('<potion>', item['potion'])
      with create_file('./output/advancements/consumable/' + item_type + '/' + '/'.join(item['id'].split(':')) + '.json') as f:
        f.write(generator['advancements']['consumable']['item']
        .replace('<consumable_item>', consumable_item)
        .replace('<consumable_location>', item_type + '/' + '/'.join(item['id'].split(':'))))

      with create_file('./output/functions/temp_calculation/consumable/' + item_type + '/' + '/'.join(item['id'].split(':')) + '.mcfunction') as f:
        f.write(generator['functions']['temp_calculation']['consumable']['item']
        .replace('<item_type>', item_type)
        .replace('<item_temperature>', item['temperature'])
        .replace('<item_time>', item['duration'])
        .replace('<temperature_type>', '>' if item['temp_type'] == 'highest' else '<'))

  with create_file('./output/functions/temp_calculation/consumable/scoreboard.mcfunction') as f:
    f.write('\n'.join(scoreboard_lists))
  with create_file('./output/functions/temp_calculation/temp_source/consumable.mcfunction') as f:
    f.write('\n'.join(consumable_lists))

# Main function
def generate():

  current_spreadsheet = getSheet('temperature_sheet') 
  data = {
    'biome': getWorksheet(current_spreadsheet, 'Biome Temperature', 2),
    'base_temp': getWorksheet(current_spreadsheet, 'Base Temperature', 2),
    'armors': {
      'armor': getWorksheet(current_spreadsheet, 'Armor Temperature', 1),
      'metal_armor': getWorksheet(current_spreadsheet, 'Metal Armor Temperature', 1)
    },
    'consumable': getWorksheet(current_spreadsheet, 'Consumable Items', 1)
  }
  biomes(data['biome'], data['base_temp'])
  armor(data['armors'])
  consumable(data['consumable'])
  print('Program run successfully!')

generate()