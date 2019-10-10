#!/bin/sh

ZIP_URL="https://github.com/measureproduct/DataSourceCatalog/releases/download/v1.0.0/DataSourceCatalog.zip"
ZIP_FILE="DataSourceCatalog.zip"
CATALOGUE_APPLICATION="/home/PackagedPlatform/storage/applications"
CATALOGUE_MEASURE="/home/PackagedPlatform/storage/measures"

wget $ZIP_URL
unzip ./$ZIP_FILE -d ./tmp

find ./tmp/BusinessApplication -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${CATALOGUE_APPLICATION}/${zipName}"
    unzip "${zipFile}" -d  "${CATALOGUE_APPLICATION}/${zipName}"
done

find ./tmp/Measure -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${CATALOGUE_MEASURE}/${zipName}"
    unzip "${zipFile}" -d  "${CATALOGUE_MEASURE}/${zipName}"
done

rm -r ./tmp

rm -r $ZIP_FILE


