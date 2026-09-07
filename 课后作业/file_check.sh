#!/bin/bash
if [ -f "$1" ]; then
	echo "File $1 exists and is normal."
else
	echo "File does not exist or is not normal."
fi
