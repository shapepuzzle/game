rm -rf ../shapepuzzle.github.io/assets
rm -rf ../shapepuzzle.github.io/audio
rm -rf ../shapepuzzle.github.io/icons
rm -rf ../shapepuzzle.github.io/stages
find ../shapepuzzle.github.io  -maxdepth 1 -type f -not -name '.*' -print0 | xargs -0 rm
cp -r dist/* ../shapepuzzle.github.io

cd ../shapepuzzle.github.io
git add --all
git commit --amend --no-edit
git push -f

echo "\nDone!"
