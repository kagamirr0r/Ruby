obj = Object.new

def obj.foo
  puts "foo"
end

module Foo
  def self.foo
    puts "foo"
  end
end

Foo.foo

module Bar
  def Bar.bar
    puts "bar"
  end
end

Bar.bar

module Who
  def self.who
    puts "who"
  end
end

module Boo
  include Who
end

#Boo.who #=> undefined method `who' for Boo:Module

module Fue
  def fue
    puts "fue"
  end
end

class Ber
  include Fue
end

bar = Ber.new
bar.fue