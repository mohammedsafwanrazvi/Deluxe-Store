#!/bin/sh
keytool -genkeypair -v -keystore release.jks -alias upload -keyalg RSA -keysize 2048 -validity 9125 -storepass 'QUyh3eVN9RU3JUj@dxae' -keypass '56sfigEd@xiA37#CE4Ca' -dname "CN=My App, O=My App, C=IN"
mv release.jks android/app/release.jks
keytool -list -v -keystore android/app/release.jks -alias upload -storepass 'QUyh3eVN9RU3JUj@dxae' | grep SHA256
