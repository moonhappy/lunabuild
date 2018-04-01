#!/usr/bin/env bash
set -x

LOVE_CONF=`find . | grep conf.lua`

P=`cat ${LOVE_CONF} | grep .title`
D="net.moonhappy.${P}"
LVER=`cat ${LOVE_CONF} | grep .version` # love version
LWIN32_Z="https://bitbucket.org/rude/love/downloads/love-${LVER}-win32.zip"
LWIN64_Z="https://bitbucket.org/rude/love/downloads/love-${LVER}-win64.zip"
LMACOS_Z="https://bitbucket.org/rude/love/downloads/love-${LVER}-macosx-x64.zip"

### clean
rm -rf "dist"
if [ "$1" == "clean" ]; then
  rm -rf "build"
  exit;
fi

##### build #####
mkdir "build"
mkdir "dist"
mkdir "binaries"

### .love
cp -r src build
cp -r lib build
cp -r content build
rm -rf build/content/RAW
cp ./*.lua build
cd build

# .love file
zip -9 -r - . > "../dist/${P}.love"
cd -

### windows
if [ ! -f "binaries/love-${LVER}-win32.zip" ]; then
  wget "$LWIN32_Z" -O "binaries/love-0.10.2-win32.zip"
fi
unzip -o "binaries/love-${LVER}-win32.zip" -d "build"
tmp="build/tmp/"
mkdir -p "$tmp/$P"
cat "build/love-${LVER}-win32/love.exe" "dist/${P}.love" > "$tmp/${P}/${P}.exe"
cp  "build/love-${LVER}-win32/*dll" "build/love-${LVER}-win32/license*" "$tmp/$P"
cd "$tmp"
zip -9 -r - "$P" > "${P}-win32.zip"
cd -
cp "$tmp/${P}-win32.zip" "dist/"
rm -r "$tmp"
if [ ! -f "binaries/love-${LVER}-win64.zip" ]; then
  wget "$LWIN64_Z" -O "binaries/love-${LVER}-win64.zip"
fi
unzip -o "binaries/love-${LVER}-win64.zip" -d "build"
tmp="build/tmp/"
mkdir -p "$tmp/$P"
cat "build/love-${LVER}-win64/love.exe" "dist/${P}.love" > "$tmp/${P}/${P}.exe"
cp  "build/love-${LVER}-win64/*dll" "build/love-${LVER}-win64/license*" "$tmp/$P"
cd "$tmp"
zip -9 -r - "$P" > "${P}-win64.zip"
cd -
cp "$tmp/${P}-win64.zip" "dist/"
rm -r "$tmp"

### macos
if [ ! -f "binaries/love-${LVER}-macosx-x64.zip" ]; then
  wget "$LMACOS_Z" -O "binaries/love-${LVER}-macosx-x64.zip"
fi
unzip -o "binaries/love-${LVER}-macosx-x64.zip" -d "build"
mv -f "build/love.app" "build/${P}.app"
cp "dist/${P}.love" "build/${P}.app/Contents/Resources/"
/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier '${D}'" "build/${P}.app/Contents/Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleName '${P}'" "build/${P}.app/Contents/Info.plist"
/usr/libexec/PlistBuddy -c "Delete :UTExportedTypeDeclarations" "build/${P}.app/Contents/Info.plist"
zip -9 -y -r - "build/${P}.app" > "${P}-macos.zip"
mv "${P}-macos.zip" dist
rm -r "build/${P}.app"
