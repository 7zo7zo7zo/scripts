#!/bin/sh

printf "Filename: ./debs/" ; basename $1
printf "Size: " ; ls -l $1 | cut -d' ' -f5
printf "MD5sum: " ; md5sum $1 | cut -d' ' -f1
printf "SHA1: " ; sha1sum $1 | cut -d' ' -f1
printf "SHA256: " ; sha256sum $1 | cut -d' ' -f1
printf "SHA512: " ; sha512sum $1 | cut -d' ' -f1
