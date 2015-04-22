#!/bin/sh
IMGDIR="/sdcard/Pictures/$1"
adb shell "rm -r $IMGDIR"
# kick off the media scanner
adb shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file://$IMGDIR