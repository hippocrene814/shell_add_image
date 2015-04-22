#!/bin/sh
FILES="./$1/"
IMGDIR="/sdcard/Pictures/$2"
adb shell "mkdir -p $IMGDIR"
for f in $FILES/$3
do
	adb push $f $IMGDIR/
done
# kick off the media scanner
adb shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file://$IMGDIR