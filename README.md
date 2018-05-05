# japanese-mora-counter
Simple command that gives you the mora count

## Usage
Usage: jmc.sh [-y] target

With -y option, this command gives Japanese pronunciation in Katakana for reference.

## Eample
```
$ ./jmc.sh 林檎
3
$ ./jmc.sh -y 林檎
リンゴ,3
$ cat mora_test.txt | ./jmc.sh
3
2
3
5
$ cat mora_test.txt | ./jmc.sh -y
リンゴ,3
ナシ,2
バナナ,3
サクランボ,5
```

## Dependency
This command depends on [MeCab](http://taku910.github.io/mecab/).
