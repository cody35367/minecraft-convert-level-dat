# Minecraft Convert Level Dat file

This repository provides scripts using the built-in Minecraft server tools to convert level.dat to plain text for editing as a level.snbt file. Then it can be converted back to .dat for consumption.

## Common use
```bash
#Backup level.dat in case something gets messed up.
cp ~/.minecraft/saves/WORLD_NAME/level.dat ~/.minecraft/saves/WORLD_NAME/level.dat.bak
#Copy level.dat from world you want to edit. Change WORLD_NAME to the name of you world
cp ~/.minecraft/saves/WORLD_NAME/level.dat .
#Pull server jar
./pull-server-jar.sh
#Convert from level.dat to level.snbt for editing
./convert-to-snbt.sh
#Open level.snbt in a text editor and change the values as desired. 
#A common one for single player survival is 'allowCommands: 0b' -> 'allowCommands: 1b' to enable cheats
#Convert from level.snbt to level.dat
./convert-to-dat.sh
#Copy new level.dat back to your save location
cp level.dat ~/.minecraft/saves/WORLD_NAME/
```