#!/bin/bash

INPUT_FILE="level.dat"
JAR_FILE="server.jar"
OUTPUT_FILE="level.snbt"

if [ ! -f "${INPUT_FILE}" ]; then
    echo "${INPUT_FILE} does not exist! Cannot continue!"
    exit 1
fi
if [ ! -f "${JAR_FILE}" ]; then
    echo "${JAR_FILE} does not exist! Cannot continue!"
    exit 1
fi

mkdir -p in/
cp ${INPUT_FILE} in/level.nbt
java -cp ${JAR_FILE} net.minecraft.data.Main --dev --input in/
mv generated/${OUTPUT_FILE} ${OUTPUT_FILE}
rm -r generated/ logs/ in/
