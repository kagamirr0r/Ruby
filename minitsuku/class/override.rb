class Foo
  def foo
    puts "foo"
  end
end

class Bar < Foo
  def foo
    puts "bar"
  end
end

foo = Foo.new
foo.foo

bar = Bar.new
bar.foo

class Monja
  def monja
    puts "monja"
  end
end

class Okonomiyaki < Monja
  def monja
    super
    puts "okonomiyaki"
    super
  end
end

okonomiyaki = Okonomiyaki.new
okonomiyaki.monja
#=> monja
#   okonomiyaki
#   monja

