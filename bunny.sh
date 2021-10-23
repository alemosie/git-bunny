#!/bin/bash

string=$(cat << EOF
|------------------|
| Git Bunny says:  | 
| $1            |
|------------------|
(\__/) ||
(•ㅅ•) ||
/ 　 づ
EOF
)

echo "$string"