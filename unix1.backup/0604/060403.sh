if [ -d "$1" ]; then
for file in $(ls "$1")
do


    if [ -x "${1}/$file" ]; then

        echo "$file"
    fi
done
else

    echo "$1:ディレクトリではありません"
fi
