#!/bin/sh

# rm the exist file 
rm mdj-makeup-ios.ipa
echo "0. delete file ok\n\n"

git pull -q
echo "1. pull ready\n\n"

mv MDJStudy.ipa  mdj-makeup-ios.ipa
echo "2. rename ok\n\n"

git add .
echo "3. add commited file ok\n\n"

git commit -m "new version"
echo "4. commit ok\n\n"

git push origin master
echo "5. push ready\n\n  EveryOne is OK!!!!!\n\n"
