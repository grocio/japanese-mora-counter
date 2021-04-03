# japanese-mora-counter
Simple command that gives you the mora count

## Usage
Usage: jmc.sh [-y] target

With -y option, this command gives Japanese pronunciation in Katakana for reference.

## Example
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
Tips: `>` operator redirects an output. For example, `$ ./jmc.sh 林檎 > results.txt` enables you to save the results in `results.txt`. Another example would be `$ cat mora_test.txt | ./jmc.sh > results.txt`.

## Dependency
This command depends on [MeCab](http://taku910.github.io/mecab/).

## Installation
1. Enable shell script
2. Install`MeCab`

Google 'MeCab' and you will find the way!

3. Download `japanese-mora-counter`

Type `git clone https://github.com/grocio/japanese-mora-counter` on the terminal.

4. Change its permission

Type `cd japanese-mora-counter` and `chmod u+x ./jmc.sh`.

## Reference (in Japanese)
石黒 翔, 齊藤 智, 日本語のモーラ数を計数するシェルスクリプトプログラムの提案, 日本認知心理学会発表論文集, 2018, 2018 巻, 日本認知心理学会第16回大会, セッションID pP1-036, p. 65-, 公開日 2018/12/20, [https://doi.org/10.14875/cogpsy.2018.0_65](https://doi.org/10.14875/cogpsy.2018.0_65)
