#!/bin/sh
root_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename $root_path)
build_path="$root_path/build"
find "$build_path/" -mindepth 1 -not -name '.gitkeep' -delete
