module Foo
  def foo
    puts "foo"
  end
end

class Bar
end

str = ""
str.extend Foo
str.foo #=> foo

Bar.extend Foo
Bar.foo #=> foo









