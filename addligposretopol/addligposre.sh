#!/bin/bash
addligposre()
{
x=$1
y=$2
echo -e "The topol file selected is $x"
echo "include LIG POSRE DETAILS into the topol.top file"
sed -n '/Include water topology/q;p' $x > subsetted_1_topol.top
sed -ne "/; Include water topology/,$ p" $x > subsetted_2_topol.top 
cat subsetted_1_topol.top $y subsetted_2_topol.top > topol_ligposre.top
rm subsetted_1_topol.top subsetted_2_topol.top
echo "-----topol.top is modified and current output file is named topol_ligposre.top-----"
}
echo "enter topol.top"
read first
echo "name of ligand posre contents file ligposre.txt"
read second
addligposre $first $second
echo "end of the script"
