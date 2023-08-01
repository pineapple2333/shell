#!/bin/bash


cd $1
find . -name "* *"|
while read name
do
    na=$(echo $name|sed -e 's/^..//g'|tr -d "[:space:]")
    mv "$name" $na
done
