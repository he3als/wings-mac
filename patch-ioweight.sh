export LINE="BlkioWeight:.*l.IoWeight,"
export FILE="environment/settings.go"

if ! grep -q "$LINE" $FILE; then
    echo "Error: Line '$LINE' not found in $FILE"
    exit 1
fi

sed -i '/$LINE/d' $FILE