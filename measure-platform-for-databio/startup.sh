#!/bin/sh

wget ${ZIP_CATALOGUE_URL}
unzip ./${ZIP_CATALOGUE_FILE} -d ./tmp

find ./tmp/Measure -name '*.zip'| while read zipFile ; do
    zipName="$(basename "${zipFile}" .zip)"
    mkdir -p "${MEASURE_PLATFORM_STORAGE_MEASURE}/${zipName}"
    unzip "${zipFile}" -d  "${MEASURE_PLATFORM_STORAGE_MEASURE}/${zipName}"
done

rm -r ./tmp

rm -r ${ZIP_CATALOGUE_FILE}


