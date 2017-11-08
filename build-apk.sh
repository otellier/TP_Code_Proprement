#!/bin/sh

set -x

./gradlew clean
./gradlew testDebugUnitTest
./gradlew assembleDebug
DATE=$(date +%d-%m-%Y-%H-%M-%S)
Echo $Date
mv app/build/outputs/apk/app-debug.apk app/build/outputs/apk/sample-${DATE}.apk
mv app/build/outputs/apk/sample-${DATE}.apk  .



