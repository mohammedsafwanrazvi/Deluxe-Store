# My App — Android project

Wraps https://deluxestore.app/ (package `com.deluxestore.myapp`, v1.0.0).

## Build

1. Install Node 20, JDK 17 and Android Studio.
2. `npm install && npx cap add android && npx cap sync android`
3. `sh scripts/generate-keystore.sh` — creates release.jks and prints your SHA-256 fingerprint.
4. Paste the fingerprint into `.well-known/assetlinks.json` and upload it to https://deluxestore.app/.well-known/assetlinks.json
5. `npm run build:apk` (test APK) and `npm run build:aab` (Play Store bundle).

Outputs: android/app/build/outputs/apk/release and bundle/release.

Or push to GitHub — the included workflow builds both files automatically.

**Keep release.jks and keystore.properties safe. Losing them means you cannot update your app on Play Store.**
