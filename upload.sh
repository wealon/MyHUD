#!/bin/zsh

# rm the exist file 
rm mdj-makeup-ios.ipa
echo "0. delete file ok\n"

ggpull
echo "1. pull ready\n"

mv MDJStudy.ipa  mdj-makeup-ios.ipa
echo "2. rename ok\n"

git add .
echo "3. add files ok\n"

git commit -m "new version"
echo "4. commit ok\n"

ggpush
echo "5. push ready\n  EveryOne is OK!!!!!\n"
