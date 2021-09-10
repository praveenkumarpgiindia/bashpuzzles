#!/bin/bash
edit()
{
x=$1
y=$2
echo -e "The topol file selected is $x"
echo "#include  \"$y\" will be added to the topol file at position number 22"
sed -i "22 i\#include \"$y\"" $x 
echo "-----topol.top is ready-----"
}
echo "enter topol.top"
read first
echo "name of ligand.itp"
read second
edit $first $second
echo "end of the script"
