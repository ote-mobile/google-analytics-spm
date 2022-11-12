#!/bin/sh

VERSION="3.20.0"

rm -r GoogleAnalytics.xcframework

function clean () {
    rm -rf GoogleAnalytics-${VERSION}
    rm GoogleAnalytics-${VERSION}*
}

clean

wget https://dl.google.com/firebase/ios/analytics/6c1e3b250fd4941d/GoogleAnalytics-${VERSION}.tar.gz 
tar -xzf GoogleAnalytics-${VERSION}.tar.gz --directory .

cp -r  GoogleAnalytics-${VERSION}/Frameworks/GoogleAnalytics.xcframework GoogleAnalytics.xcframework

clean
