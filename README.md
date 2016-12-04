# MeCab (Natto) ruby sample

## docker build

```
docker build -t mecab-docker .
```

## run sample
```
docker run --rm -it -v $(pwd):/var/ruby mecab-docker ruby sample.rb
```

## run sample console
```
docker run --rm -it -v $(pwd):/var/ruby mecab-docker bash
```

In container

```
root@f7cc82a7f817:/var/ruby# echo 'すもももももももものうち、ホゲ' | mecab --node-format="%m\t%f[0]\t%f[1]\n" --unk-format="%m\t-\t-\n"
すもも  名詞    一般
も      助詞    係助詞
もも    名詞    一般
も      助詞    係助詞
もも    名詞    一般
の      助詞    連体化
うち    名詞    非自立
、      記号    読点
ホゲ    -       -
EOS
```

