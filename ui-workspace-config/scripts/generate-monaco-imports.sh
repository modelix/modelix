#!/usr/bin/env -S bash --login

# Prelude
set -e # Stop on first error
SCRIPT_FOLDER="$(dirname "$0")/."
cd $SCRIPT_FOLDER

TMP_DIR="./tmp"
MONACO_DIR=$TMP_DIR/monaco
rm -rf $MONACO_DIR  >/dev/null 2>&1 || true
MONACO_VERSION=$(pnpm list | grep -o -P '(?<=monaco-editor )[^\s]+')

MONACO_TAG=v$MONACO_VERSION
echo "Checking out Monaco editor $MONACO_TAG"
git clone --quiet --depth 1 --branch $MONACO_TAG --single-branch https://github.com/microsoft/monaco-editor.git $MONACO_DIR &> /dev/null

cd $MONACO_DIR/samples
pnpm install
pnpm install -D monaco-editor@$MONACO_VERSION
cd ./browser-esm-webpack-small

pnpm run generate-imports

# grep -Pzo '(?s)// BEGIN_FEATURES.*// END_FEATURES' index.js
cat index.js