#!/bin/bash

cd utils

wget https://cdn.theunarchiver.com/downloads/unarMac.zip

unzip unarMac.zip

rm -r -f ffmpeg/

mkdir ffmpeg

cd ffmpeg

wget https://evermeet.cx/ffmpeg/ffmpeg-92190-gb2adc31697.7z

../utils/unar ffmpeg-92190-gb2adc31697.7z

rm ffmpeg-92190-gb2adc31697*

cd ..

rm -r -f *zip*

rm -r -f *tar*

wget https://dl.google.com/go/go1.11.1.darwin-amd64.tar.gz

tar xvzf go1.11.1.darwin-amd64.tar.gz

rm go1.11.1.darwin-amd64.tar.gz

go/bin/go get -d -v .

go/bin/go build

rm -r -f www/

mkdir www

rm -r -f low-latency-preview-master