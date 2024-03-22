#!/bin/bash

#================================================================================
# change-options.bash - Changes the orientation ,language and type options in
# the ../../01-settings/metadata.typ file
# usage:
#
# Parameters
type=full
usage='Usage: change-options.bash [-t [fill|minimal]] [-h]'
while getopts 'o:l:t:h' options; do
  case $options in
    t ) type=$OPTARG;;
    h ) echo -e $usage
          exit 1;;
    * ) echo -e $usage
          exit 1;;
  esac
done

# Folder location
# OS specifics
if [[ "$OSTYPE" == "darwin"* ]]; then
  base_directory="$(dirname "$(greadlink -f "$0")")"
elif [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "cygwin" || "$OSTYPE" == "mysys" ]]; then
  base_directory="$(dirname "$(readlink -f "$0")")"
else
  base_directory="$(dirname "$(readlink -f "$0")")"
fi
base_directory="$base_directory/../../"
pushd "$base_directory"

SEPARATOR='--------------------------------------------------------------------------------'
INDENT='  '

#echo "$SEPARATOR"
#echo "-- ${0##*/} Started!"
#echo ""

fname="01-settings/metadata.typ"
# disable all options
sed -e "s/^\  type        : \"full\",/  \/\/type        : \"full\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  type        : \"minimal\",/  \/\/type        : \"minimal\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"

# enable wanted option
sed -e "s/  \/\/type        : \"$type\",/  type        : \"$type\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"

popd

#-------------------------------------------------------------------------------
# Exit
#
#echo ""
#echo "-- ${0##*/} Finished!"
#echo "$SEPARATOR"
