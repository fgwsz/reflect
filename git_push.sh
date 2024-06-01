#!/bin/sh
root_path=$(dirname "$(readlink -f "$0")")
echo "You Can Input q For Abort."
read -p "Input Commit Info: " commit_info
if [ "$commit_info" != "q" ]; then
    git add -f "$root_path/build/.gitkeep"
    git add "$root_path/include/*"
    git add "$root_path/lib/*"
    git add "$root_path/src/*"
    git add "$root_path/tests/*"
    git add "$root_path/CMakeLists.txt"
    git add "$root_path/.gitignore"
    git add "$root_path/make.sh"
    git add "$root_path/clean.sh"
    git add "$root_path/git_push.sh"
    git commit -m "$commit_info"
    git push
fi
