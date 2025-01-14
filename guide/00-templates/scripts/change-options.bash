#!/bin/bash

#================================================================================
# change-options.bash - Changes the type and language
# the /01-settings/metadata.typ file
# usage:
#
# Parameters
type=full
lang=en
usage='Usage: change-options.bash [-t [fill|minimal|final|draft|student|solution]] [-l [en|fr|de]] [-h]'
while getopts 'o:l:t:h' options; do
  case $options in
    t ) type=$OPTARG;;
    l ) lang=$OPTARG;;
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
sed -e "s/^\  type        : \"final\",/  \/\/type        : \"final\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  type        : \"draft\",/  \/\/type        : \"draft\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  type        : \"student\",/  \/\/type        : \"student\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  type        : \"solution\",/  \/\/type        : \"solution\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  lang        : \"en\",/  \/\/lang        : \"en\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  lang        : \"de\",/  \/\/lang        : \"de\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/^\  lang        : \"fr\",/  \/\/lang        : \"fr\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"

# enable wanted option
sed -e "s/  \/\/type        : \"$type\",/  type        : \"$type\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"
sed -e "s/  \/\/lang        : \"$lang\",/  lang        : \"$lang\",/g" "$fname" > "$fname.tmp" && mv "$fname.tmp" "$fname"

popd

#-------------------------------------------------------------------------------
# Exit
#
#echo ""
#echo "-- ${0##*/} Finished!"
#echo "$SEPARATOR"
