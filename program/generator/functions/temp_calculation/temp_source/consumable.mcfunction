scoreboard players set @s tmp.<sname>Tmp <temperature>
scoreboard players operation @s tmp.<sname>Amt <operator> @s tmp.<sname>Tmp
scoreboard players set @s tmp.<sname>Tm <duration>
scoreboard players operation @s tmp.<sname>Tm *= #second tmp.variable
scoreboard players operation @s tmp.<sname>Tme > @s tmp.<sname>Tm

advancement revoke @s from <namespace>:consumable/root