#!/bin/sh

# rm the exist file 
rm mdj-makeup-ios.ipa
echo 0. delete file ok

ggpull
echo 1. pull ready

mv MDJStudy.ipa  mdj-makeup-ios.ipa
echo 2. rename ok

git add .
echo 3. add commited file ok

git commit -m "last"
echo 4. commit ok

ggpush
echo 5. push ready
