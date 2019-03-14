scoreboard players set @s tmp.<item_type>Tmp <item_temperature>
scoreboard players operation @s tmp.<item_type>Amt <temperature_type> @s tmp.<item_type>Tmp
scoreboard players set @s tmp.<item_type>Tm <item_time>
scoreboard players operation @s tmp.<item_type>Tm *= #second tmp.variable
scoreboard players operation @s tmp.<item_type>Tme > @s tmp.<item_type>Tm

advancement revoke @s from <datapack_id>:consumable/root