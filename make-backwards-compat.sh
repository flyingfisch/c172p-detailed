#!/bin/bash

# Script written by Mark Fischer, Jr. (flyingfisch)

FG35XML='Models/c172p-detailed.xml'
FG32XML='Models/c172p-detailed-backwards-compatible.xml'

echo "Creating backwards-compatible XML file"
echo "Input:" $FG35XML
echo "Output:" $FG32XML

sed \
	-e 's:Aircraft/c172p-detailed/Models/Effects/interior/c172p-interior-glass-shadow:Effects/model-transparent:g' \
	-e 's:Aircraft/c172p-detailed/Models/Effects/interior/c172p-interior-glass-reflection-front:Effects/model-transparent:g' \
	-e 's:Aircraft/c172p-detailed/Models/Effects/interior/c172p-interior-glass-reflection-side:Effects/model-transparent:g' \
	-e 's:Aircraft/c172p/Models/Effects/glass:Effects/model-transparent:g' \
	-e 's:<path>Aircraft/c172p-detailed/Models/Effects/shadow/3dshadow.xml</path>::g' \
	$FG35XML > $FG32XML

echo "Finished!"
