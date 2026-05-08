#!/bin/sh

# basic shell script that allows me to package the entire pack in one go, ready for release (sorry windows users!)
# this script is interchangable with any pack aswell

# creates temporary folder, in order to avoid recursive actions that "might" delete the whole project
mkdir ./tmp

cp -r ./ ./tmp

# it outputs a warning, saying that i cant copy its own folder, but its nothing to worry about, for now...
# ill just tell you to not worry about it
echo "NOTE: The message above you is a side effect of how the script was made, but doesnt have any destructive effects, for now."

# anyways, in that folder delete all and temporary files
# using force, so that it doesnt move to trash
rm -rf ./tmp/todo.txt
rm -rf ./tmp/tmp/
rm -rf ./tmp/README.md
rm -rf ./tmp/publish.sh
rm -rf ./tmp/todo.txt
rm -rf ./tmp/LICENSE
rm -rf ./tmp/.git/
rm -rf ./tmp/.gitignore
# i know it doesnt make sense to have this entry, but i do keep the original pack just in case i need assets from there
rm -rf ./tmp/original/

# i only have 7zip install on my system, so ill use that for the archive
# in order for the file to be read by minecraft, i have to cd into the temporary folder
cd ./tmp
# dont mind the slashes, they are there to specify spaces
7z a D°Uzi\ Craft:\ Community\ Port.zip ./

# now return to the main directory
cd ..
# move the pack back into the main directory
mv ./tmp/D°Uzi\ Craft:\ Community\ Port.zip ./
# since we are done, there is no reason to keep the temporary folder
rm -rf ./tmp
# lastly, if the command is not ran through a gui, show a completion message
echo "resource pack has been packaged!"