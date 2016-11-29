require 'natto'

text = 'すもももももももものうち'

natto = Natto::MeCab.new
words = {}
natto.parse(text) {|n|
  if /名詞,一般/ =~ n.feature
    words[n.surface] ||= 0
    words[n.surface] += 1
  end
}

words.each do |k, v|
  puts "#{k}\t#{v}回"
end
