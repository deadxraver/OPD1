cd lab0
cd bastiodon4
echo "1"
find . -type f -exec cat {} \; | wc -m 1> ~/tmp/s409853 2>&1
cd ..
echo "2"
find . -type f -name "p*" -exec ls -lt {} \;
echo "3"
find . -type f -name "*n" -exec cat {} \; 2>> ~/tmp/s409853 | sort -r
echo "4"
find . -name "s*" -exec ls -Sr {} \; | head -n 3
echo "5"
find pikachu8 -type f -maxdepth 1 -exec ls -t {} \; 2> /dev/null
echo "6"
ls -crlR | head -n 2 2>&1
cd ..
