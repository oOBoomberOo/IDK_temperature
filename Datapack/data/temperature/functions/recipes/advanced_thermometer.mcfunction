clear @s knowledge_book 1
give @s clock{temperature:{id:"advanced_thermometer"},display:{Name:"{\"translate\":\"temperature.item.advanced_thermometer\",\"color\":\"yellow\",\"italic\":\"false\"}"}}
advancement revoke @s from temperature:recipes/root
recipe take @s temperature:advanced_thermometer