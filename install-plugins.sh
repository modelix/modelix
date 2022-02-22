#!/bin/sh

# Finds and copies all MPS plugins from SOURCE_FOLDER to TARGET_FOLDER. Zip files containing plugins are extracted.

TARGET_FOLDER="${1:-/usr/modelix-ui/mps/plugins/}"
SOURCE_FOLDER="${2:-/mps-plugins/}"
DELETE_INPUT_FOLDER="${3:-1}"

#SOURCE_FOLDER=../test_input
#TARGET_FOLDER=../test_output/
#rm -rf $SOURCE_FOLDER
#rm -rf $TARGET_FOLDER
#mkdir $SOURCE_FOLDER
#mkdir $TARGET_FOLDER
#cp -R ./build $SOURCE_FOLDER

find $SOURCE_FOLDER -name '*.zip' |
while IFS= read -r line; do
  ZIP_OUTPUT_DIR="$line-unzip"
  unzip -d $ZIP_OUTPUT_DIR $line
done

find $SOURCE_FOLDER -path '**/META-INF/plugin.xml' |
while IFS= read -r line; do
  PLUGIN_DIR="$(dirname "$(dirname $line)")"
  mv $PLUGIN_DIR $TARGET_FOLDER
  echo "Installed plugin from $PLUGIN_DIR"
done

if [ $DELETE_INPUT_FOLDER -eq "1" ]; then
  rm -rf "${SOURCE_FOLDER:?}"/*
fi