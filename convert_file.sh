#!/bin/bash
for file in *$1;
do
newfile_name=${file// /_};
echo $newfile_name;
noext=$(basename ${newfile_name} .$1);
echo $noext
ffmpeg -i "${file}" -vn ${noext}.$2;
done
