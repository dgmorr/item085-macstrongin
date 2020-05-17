#!/bin/bash

COMMAND=$1
FILE=$2

NAME=`echo "$FILE" | cut -d'.' -f1`
TMPFILE="$NAME.go"
cp $FILE $TMPFILE

INTER="tmp$RANDOM"
sed 's/charmander/break/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/squirtle/case/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/bulbasaur/chan/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/ivysaur/const/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/blastoise/continue/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/weepinbell/default/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/beedrill/defer/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/pidgey/else/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/rattata/fallthrough/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/pikachu/for/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/clefairy/func/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/jigglypuff/go/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/golbat/goto/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/dugtrio/if/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/meowth/import/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/psyduck/interface/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/primeape/map/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/growlithe/package/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/machamp/range/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/tentacool/return/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/geodude/select/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/onix/struct/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/drowzee/switch/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/haunter/type/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
sed 's/cubone/var/g' $TMPFILE > $INTER
cat $INTER > $TMPFILE
rm $INTER

go $COMMAND $TMPFILE
rm $TMPFILE
