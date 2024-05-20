read inp
echo $inp > input
cat input | grep -o '[^0-9]' > operation
op=$(cat operation)
cat input | grep -Eo '[0-9]+[^0-9]{1}' > tempcalc1
cat tempcalc1 | grep -Eo '[0-9]+' > tempcalc2
n1=$(cat tempcalc2)
cat input | grep -Eo '[^0-9]{1}[0-9]+' > tempcalc1
cat tempcalc1 | grep -Eo '[0-9]+' > tempcalc2
n2=$(cat tempcalc2)
pl='+'
mn='-'
div='/'
ml='*'
if [ "$op" = "$pl" ]; then
echo $(($n1 + $n2))
elif [ "$op" = "$mn" ]; then
echo $(($n1 - $n2))
elif [ "$op" = "$ml" ]; then
echo $(($n1 * $n2))
elif [ "$op" = "$div" ]; then
echo $(($n1 / $n2))
fi
rm input operation tempcalc1 tempcalc2
