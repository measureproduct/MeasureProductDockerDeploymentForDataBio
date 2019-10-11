#!/bin/sh

ZIP_CATALOGUE_URL="https://github.com/measureproduct/DataSourceCatalog/releases/download/v1.0.0/DataSourceCatalog.zip"
ZIP_CATALOGUE_FILE="DataSourceCatalog.zip"
MEASURE_PLATFORM_STORAGE_APPLICATION="/home/PackagedPlatform/storage/applications"
MEASURE_PLATFORM_STORAGE_MEASURE="/home/PackagedPlatform/storage/measures"

wget ${ZIP_CATALOGUE_URL}
unzip ./${ZIP_CATALOGUE_FILE} -d ./tmp

find ./tmp/BusinessApplication -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${MEASURE_PLATFORM_STORAGE_APPLICATION}/${zipName}"
    unzip "${zipFile}" -d  "${MEASURE_PLATFORM_STORAGE_APPLICATION}/${zipName}"
done

find ./tmp/Measure -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${MEASURE_PLATFORM_STORAGE_MEASURE}/${zipName}"
    unzip "${zipFile}" -d  "${MEASURE_PLATFORM_STORAGE_MEASURE}/${zipName}"
done

rm -r ./tmp

rm -r ${ZIP_CATALOGUE_FILE}


