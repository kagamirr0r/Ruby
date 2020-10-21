module Foo
  def foo
    puts "module foo"
  end

  module_function :foo
end

module Bar
  def foo
    puts "module bar"
  end

  module_function :foo
end

Foo.foo #=> module foo
Bar.foo #=> module bar
