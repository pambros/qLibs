pathWindowsToUnix () {
	_TMP_PATH=$(echo "$1" | sed 's,\\,/,g')
	_TMP_PATH=/${_TMP_PATH:0:1}${_TMP_PATH:2}
	echo ${_TMP_PATH}
}