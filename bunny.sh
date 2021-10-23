#!/bin/bash

sign=$(cat << EOF
  
     |------------|
     | PUSH IT.   |
     | PUSH IT    |
     | REAL GOOD. |
     |------------|
EOF
)

bunny=$(cat << EOF
   ${sign}
   (\__/) ||
   (•ㅅ•) ||
   / 　 づ
EOF
)

branch=$(git rev-parse --abbrev-ref HEAD)
message=$1

echo "You're good to commit all your changes and yeet them to origin/$branch?"
read -n 2 -p "Y/n: " input

if [ "$input" = "Y" ] ; then
  echo "$bunny"
  
  git add . && \
  git status && \
  git commit -m "\"$message\"" && \
  git push origin $branch
fi