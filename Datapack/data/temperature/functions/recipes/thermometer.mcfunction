clear @s knowledge_book 1
give @s clock{temperature:{id:"thermometer"},display:{Name:"{\"translate\":\"Thermometer\",\"color\":\"yellow\",\"italic\":\"false\"}"}}
advancement revoke @s from temperature:recipes/root
recipe take @s temperature:thermometer