#!/bin/sh

filename=$1
printf "Filename: ./debs/" ; basename $filename
printf "Size: " ; ls -l $filename | cut -d' ' -f5
printf "MD5sum: " ; md5sum $filename | cut -d' ' -f1
printf "SHA1: " ; sha1sum $filename | cut -d' ' -f1
printf "SHA256: " ; sha256sum $filename | cut -d' ' -f1
printf "SHA512: " ; sha512sum $filename | cut -d' ' -f1
