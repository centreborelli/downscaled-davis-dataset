#! /bin/bash
dataset_folder=$1

BLUR="imscript-lite/blur"
DOWNSA="imscript-lite/downsa"
PLAMBDA="imscript-lite/plambda"
IMPRINTF="imscript-lite/imprintf"
for seq in $(ls $dataset_folder); 
do
	im="$1/$seq/00000.jpg"
	w=$($IMPRINTF "%h" $im)
	r=$($PLAMBDA -c "$w 540 / floor")
	f=$($PLAMBDA -c "$r 2 ^ 1 - sqrt 0.4 *")

	for im in $(ls $dataset_folder/$seq/*.jpg)
	do
		echo "$BLUR -s g $f $im | $DOWNSA f $r - $(dirname $im)/$(basename $im jpg)png && rm $im"
	done
done

