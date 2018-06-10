if [ $# -eq "0" ] || [ $# -gt "1" ]; then
	echo "Too many(few) arguments"
	exit 1
fi

_0=$(grep -o "0" resources/digitfile.txt | wc -l)" zeroes"
_1=$(grep -o "1" resources/digitfile.txt | wc -l)" ones"
_2=$(grep -o "2" resources/digitfile.txt | wc -l)" twos"
_3=$(grep -o "3" resources/digitfile.txt | wc -l)" threes"
_4=$(grep -o "4" resources/digitfile.txt | wc -l)" fours"
_5=$(grep -o "5" resources/digitfile.txt | wc -l)" fives"
_6=$(grep -o "6" resources/digitfile.txt | wc -l)" sixs"
_7=$(grep -o "7" resources/digitfile.txt | wc -l)" sevens"
_8=$(grep -o "8" resources/digitfile.txt | wc -l)" eights"
_9=$(grep -o "9" resources/digitfile.txt | wc -l)" nines"

echo $_0, $_1, $_2, $_3, $_4, $_5, $_6, $_7, $_8, $_9
