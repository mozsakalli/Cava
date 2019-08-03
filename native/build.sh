#!/bin/bash

cd files
zip ../../core/src/main/resources/com/cava/native.zip -r *

cd ../gradle
zip ../../core/src/main/resources/com/cava/gradle.zip -r *
