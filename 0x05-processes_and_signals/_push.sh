#!/usr/bin/env bash
# automates pushing to github

COMMIT_MESSAGE=$1

if [ ! "$COMMIT_MESSAGE" ];
then
echo "No commit message found: "
echo "Run ./push 'your commit message' "
echo "Aborting process..."
echo "Your changes were not published"
else
echo "Adding to repository..."
git add .
echo "Committing latest changes..."
git commit -m COMMIT_MESSAGE
echo "Pushing to remote..."
git push
echo "Pushed new changes with the message $COMMIT_MESSAGE"
fi
