#!/bin/bash

signs[0]=$(cat << EOF
  
     |------------|
     | PUSH IT.   |
     | PUSH IT    |
     | REAL GOOD. |
     |------------|
EOF
)

signs[1]=$(cat << EOF

  |-----------------|
  | IT IS BETTER TO | 
  | HAVE LOVED AND  | 
  | PUSHED THAN     |
  | NEVER TO HAVE   |
  | PUSHED AT ALL.  |
  |-----------------|
EOF
)

signs[2]=$(cat << EOF

      |---------|
      | GIT IT, |
      | GIRL 🔥 |
      |---------|
EOF
)

size=${#signs[@]}
index=$(($RANDOM % $size))

bunny=$(cat << EOF
   ${signs[$index]}
   (\__/) ||
   (•ㅅ•) ||
   / 　 づ
EOF
)

branch=$(git rev-parse --abbrev-ref HEAD)
message=$1

echo "You're good to commit all your changes and yeet them to origin/$branch?"
read -n 1 -p "Y/n: " input

if [ "$input" = "Y" ] ; then
  echo "$bunny"
  
  git add . && \
  git status && \
  git commit -m "\"$message\"" && \
  git push origin $branch
fi