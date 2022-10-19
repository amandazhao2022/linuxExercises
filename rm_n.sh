#!/bin/bash
if [[ $# -ne 2  ]]; then
	echo "usage: $0 [directory] <n>" 1>&2
	exit 0
fi

find $1 -type f -size +$2c -delete


