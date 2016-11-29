# MeCab (Natto) ruby sample

## docker build

```
docker build -t mecab-docker .
```

## run sample
```
docker run --rm -it -v $(pwd):/var/ruby mecab-docker ruby sample.rb
```
