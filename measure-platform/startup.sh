#!/bin/sh

ZIP_CATALOGUE_URL="https://github.com/measureproduct/DataSourceCatalog/releases/download/v1.0.0/DataSourceCatalog.zip"
ZIP_CATALOGUE_FILE="DataSourceCatalog.zip"
MEASUREPLATFORM_STORAGE_APPLICATION="/home/PackagedPlatform/storage/applications"
MEASUREPLATFORM_STORAGE_MEASURE="/home/PackagedPlatform/storage/measures"

wget ${ZIP_CATALOGUE_URL}
unzip ./${ZIP_CATALOGUE_FILE} -d ./tmp

find ./tmp/BusinessApplication -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${MEASUREPLATFORM_STORAGE_APPLICATION}/${zipName}"
    unzip "${zipFile}" -d  "${MEASUREPLATFORM_STORAGE_APPLICATION}/${zipName}"
done

find ./tmp/Measure -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${MEASUREPLATFORM_STORAGE_MEASURE}/${zipName}"
    unzip "${zipFile}" -d  "${MEASUREPLATFORM_STORAGE_MEASURE}/${zipName}"
done

rm -r ./tmp

rm -r ${ZIP_CATALOGUE_FILE}


