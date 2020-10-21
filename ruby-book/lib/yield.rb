def greeting
  puts 'おはよう'
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは


def greeting
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
#=> おはよう
#   こんにちは
#   こんばんは
#   おはよう
#   こんにちはこんにちは
#   こんばんは


def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

def greeting_ja(&block)
  texts = ['おはよう','こんにちは','こんばんは']
  greeting_common(texts,&block)
end

def greeting_en(&block)
  texts = ['good morning','hello','good evening']
  greeting_common(texts,&block)
end

def greeting_common(texts,%block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

greeting_en do |text|
  text.upcase
end
#=> good morning
#   HELLO
#   good evening