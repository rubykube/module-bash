echo -n "Hello, "
if [ ! -z $1 ]; then
    echo -n $1
else
    echo -n "World"
fi
echo "!"
