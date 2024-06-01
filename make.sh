#!/bin/sh
root_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename $root_path)
build_path="$root_path/build"
cd $build_path
cmake ..
make
cd ..
"$build_path/$project_name"
