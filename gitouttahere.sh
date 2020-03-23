#!/bin/bash

# This script automatically creates a remote repository on my non-USNA
# Github to allow me to acess stuff of of the yard. Which is awesome.

# Usage: ./gitouttahere.sh <Target directory you wish to upload to github (Don't include the /)>

# Replace my account name with yours.
curl -u splaney \
       -H "Content-Type: application/json" \
       -d '{"name":"'$1'"}' https://api.github.com/user/repos
cd $1

git init
git add .
git commit -m "Y33t"
git remote add $1_public git@github.com:splaney/$1.git
git push -u $1_public master
