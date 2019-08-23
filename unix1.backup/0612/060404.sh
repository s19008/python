#!/bin/bash

usage()
{
    #シェルスクリプトのファイル名を取得
    local script_name=$(basename "$0")

    #ヒアドキュメントでヘルプを表示
    cat << END
使い方: 060404.sh DIRPATH...
DIRPATHで指定したディレクトリ下の読み取り不可ファイルの一覧表示
FILEPATH - 読み取り不可ファイルの一覧表示を行うディレクトリパスを指定
END
}

#コマンドライン引数が０個のとき（何も指定されないとき）
if [ "$#" -eq 0 ]; then

    usage
    exit 1
fi

if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        if [ ! -r "$file" ]; then
            echo $(basename "$file")
        fi
    done
else
    echo "${1}:ディレクトリではありません"
fi
