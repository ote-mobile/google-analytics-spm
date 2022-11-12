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

chmod 755 GoogleAnalytics.xcframework/ios-arm64_armv7/GoogleAnalytics.framework/GoogleAnalytics 
chmod 755 GoogleAnalytics.xcframework/ios-arm64_i386_x86_64-simulator/GoogleAnalytics.framework/GoogleAnalytics 
chmod 755 GoogleAnalytics.xcframework/ios-arm64_x86_64-maccatalyst/GoogleAnalytics.framework/GoogleAnalytics 

clean
