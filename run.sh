#!/bin/bash

echo "Started copying dot files"
for i in $(ls -A ./settings/); do
    echo "    $i"
    cp ./files/$i ~/$i
done

echo "Done"
