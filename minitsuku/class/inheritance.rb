class Foo
  def foo
    puts "foo"
  end
end

class Bar < Foo
  def bar 
    puts "bar"
  end
end

bar = Bar.new
bar.foo
bar.bar