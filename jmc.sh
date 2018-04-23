#!/bin/sh
echo $1 |
  mecab -Oyomi |
  sed -e 's/。//g'\
  -e 's/、//g'\
  -e 's/ャ//g'\
  -e 's/ュ//g'\
  -e 's/ョ//g'\
  -e 's/　//g'\
  -e 's/ //g' |
  wc -m |
  xargs -I{} echo {} - 1 |
  bc
