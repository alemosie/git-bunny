bunny=$(cat << EOF

    |-------------|
    | WELCOME TO  |
    | GIT YEET    |
    |-------------|
   (\__/) ||
   (•ㅅ•) ||
   / 　 づ
EOF
)

echo "$bunny"
echo "`git yeet` will add, commit, and push all active git changes to the origin branch."

bunny_directory=$(pwd)
bunny_file_path="$bunny_directory/bunny.sh"

# git config --global alias.yeet "!sh $bunny_file_path"

echo "You now have access to `git yeet` as an alias 🚀"
echo "Execute `git yeet --help` to learn more."