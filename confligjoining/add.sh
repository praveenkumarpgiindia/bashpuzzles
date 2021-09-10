#!/bin/bash
add()
{
x=$1
y=$2
echo -e "The file to be joined are $x and $y"
grep "LIG" $y > z.txt
head $x -n -1 > p.txt
tail $x -n 1 > t.txt
cat p.txt z.txt t.txt > protein.processed.gro
value1=`cat $x | wc -l` 
deletingvalue1=3
value1final=$((value1-deletingvalue1))
value2=`grep "LIG" $y | wc -l` 
valuefinal=$((value1final+value2))
echo "$valuefinal will be added inplace to the output file"
sed -i "2 i\ $valuefinal" protein.processed.gro 
sed -i '3d' protein.processed.gro
rm p.txt z.txt t.txt
}
echo "enter conf.gro"
read first
echo "enter lig.gro"
read second
add $first $second 
echo "end of the script"
