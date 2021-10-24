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

signs[3]=$(cat << EOF

     |----------|
     | GIT THIS |
     | BREAD 🥖 |
     |----------|
EOF
)

signs[4]=$(cat << EOF

    |---------|
    | YOU GIT |
    | THIS 💪 |
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

# git yeet --help
help=$(cat << EOF
usage: git yeet [help] <commit message>

  yeet    Add, commit, and push all changes
          to the current branch in origin.

Example:
  git yeet "First commit"
EOF
)

if [ "$message" = "help" ] ; then 
  echo "$help"
  exit
fi

# Don't run `git yeet` if there is no commit message
if [ -z "$message" ] ; then
  echo "Please provide a commit message."
  exit
fi


# Confirm
echo "You're good to commit all your changes and yeet them to origin/$branch?"
read -n 1 -p "Y/n: " input

if [ "$input" = "Y" ] ; then
  echo "$bunny"
  
  # Run add, commit, push
  git add . && \
  git status && \
  git commit -m "$message" && \
  git push origin $branch
fi