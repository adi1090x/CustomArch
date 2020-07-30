#!/usr/bin/env bash

# Clean The Repository

echo "Cleaning Up Repository..."

mv .git/config config
rm -rf .git
sh ./setup.sh
mv config .git/config
git add --all .
git commit -m "Cleanup"
git push origin master --force

echo "Clean Up Completed."
