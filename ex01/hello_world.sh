#!/etc/bash
if [[ ! -z "${1}" ]]; then
    echo "Hello, ${1}!"
else
    echo "Hello, World!"
fi
