#!/bin/bash

echo "Started necessary installs"
for i in $(cat necessaryInstalls.txt); do
    echo "    $i"
    sudo apt install $i
done

echo "Started copying dot files"
for i in $(ls -A ./files/); do
    echo "    $i"
    cp ./files/$i ~/$i
done

echo "Done"
