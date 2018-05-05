#!/bin/sh
y_flag=0

while getopts 'y' option
do
  case $option in
    y)
      y_flag=1
      ;;
    \?)
      echo 'Usage: jmc.sh [-y] target' 1>&2
      exit 1
      ;;
  esac
done

shift $(expr $OPTIND - 1)

_jmc() {
if [ $y_flag -eq 1 ]; then
  yomi=$(echo $1 | mecab -Oyomi)
fi

mora=$(echo $1 |
  mecab -Oyomi |
  sed -e 's/。//g'\
  -e 's/、//g'\
  -e 's/　//g'\
  -e 's/ //g'\
  -e 's/ャ//g'\
  -e 's/ュ//g'\
  -e 's/ョ//g'\
  -e 's/ァ//g'\
  -e 's/ィ//g'\
  -e 's/ゥ//g'\
  -e 's/ェ//g'\
  -e 's/ォ//g' |
  wc -m |
  xargs -I{} echo {} - 1 |
  bc)

if [ $y_flag -eq 1 ]; then
  echo "$yomi,$mora"
else
  echo "$mora"
fi
}

if [ -p /dev/stdin ]; then
  cat - | while read target
  do
    _jmc $target
  done
else
  _jmc $1
fi
