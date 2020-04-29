#!/bin/bash

Dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $Dir

cat > .gitignore<<IGNORE
.DS_Store
init_remote.*
commmit.*
IGNORE

git init
git add .
git commit -m "First commit"

echo "Enter remote URL, e.g git@github.com:... or https://github.com/..."
read url

if [ -z "$url" ]
  then
    echo "aborting due to missing remote URL"
    exit 1
fi

git remote add origin "$url"

git push -u origin master


