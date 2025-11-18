rm -rf ../shapepuzzle.github.io/assets
rm -rf ../shapepuzzle.github.io/audio
rm -rf ../shapepuzzle.github.io/icons
rm -rf ../shapepuzzle.github.io/stages
find ../shapepuzzle.github.io  -maxdepth 1 -type f -not -name '.*' -print0 | xargs -0 rm
cp -R dist/* ../shapepuzzle.github.io
yes | cp -rf VERSION ../shapepuzzle.github.io/VERSION

cd ../shapepuzzle.github.io
git add --all
git commit -m "feat: New version $(cat VERSION)"
git push

echo "\nDone!"
