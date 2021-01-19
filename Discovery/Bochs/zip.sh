#! /bin/bash

file="hdc-0.11-new.img"

if [ -f "${file}" ]; then
	zip hdc-0.11-new.img.zip hdc-0.11-new.img
	rm hdc-0.11-new.img
fi



