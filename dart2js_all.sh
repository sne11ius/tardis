#!/bin/bash

find web -type f -iname "*.dart" -print0 | while IFS= read -r -d $'\0' file; do
    dart2js -c "$file" -o "$file".js
done
