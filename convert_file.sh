#!/bin/bash
source_extension=$1
destination_extension=$2
list_of_filenames=(*$1)

convert_file() {
local filename=$1
local source_extension=$2
local destination_extension=$3
newfile_name=${filename// /_};
noext=$(basename ${newfile_name} .$source_extension);
ffmpeg -nostats -loglevel error -i "${filename}" -vn ${noext}.$destination_extension;
}

export -f convert_file

parallel convert_file ::: "${list_of_filenames[@]}" ::: $source_extension ::: $destination_extension
