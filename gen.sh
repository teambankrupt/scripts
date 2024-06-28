#!/bin/bash

function execTool() {
  java -jar scripts/tools/gentool.jar "$1" "$2" "$srcDir" "$3"
}

if [ "$1" = "crud" ]; then
  srcDir="examples/crudexample"
  execTool "$1" "$2" "$3"
elif [ "$1" = "module" ]; then
  srcDir="examples/examplemodule"
  execTool "$1" "$2" "$3"
elif [ "$1" = "migration" ]; then
  echo "-- $(date "+%b %d, %Y")" >"app/src/main/resources/db/migration/V$(date +%s)__$2.sql"
  echo "Migration Created!"
else
  echo "Must specify type of generated asset. i.e. crud | module | migration"
fi
