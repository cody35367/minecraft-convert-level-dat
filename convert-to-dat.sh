#!/bin/bash

INPUT_FILE="level.snbt"
JAR_FILE="server.jar"
OUTPUT_FILE="level.dat"

if [ ! -f "${INPUT_FILE}" ]; then
    echo "${INPUT_FILE} does not exist! Cannot continue!"
    exit 1
fi
if [ ! -f "${JAR_FILE}" ]; then
    echo "${JAR_FILE} does not exist! Cannot continue!"
    exit 1
fi

mkdir -p in/
cp ${INPUT_FILE} in/${INPUT_FILE}
java -cp ${JAR_FILE} net.minecraft.data.Main --client --input in/
mv generated/level.nbt ${OUTPUT_FILE}
rm -r generated/ logs/ in/