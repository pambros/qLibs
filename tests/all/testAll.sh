#!/bin/sh
source ../../localProjectPath.sh

mkdir -p generated

for i in "${_USER_SPECIFIC_LIST[@]}"
do
	export _USER_SPECIFIC=$i
	./test.sh
done
