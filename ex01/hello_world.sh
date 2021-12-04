word='World'

if [ -n "$1" ]; then
	word="$1"
fi

echo "Hello, $word!"
