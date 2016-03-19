#!/bin/sh

# rm the exist file 
rm mdj-makeup-ios.ipa
echo 0. delete file ok
echo \n

git pull -q
echo 1. pull ready
echo \n

mv MDJStudy.ipa  mdj-makeup-ios.ipa
echo 2. rename ok
echo \n

git add .
echo 3. add commited file ok

git commit -m "new version"
echo 4. commit ok

git push origin $(git_current_branch)
echo 5. push ready
echo 6. done!!!
