module Foo
  def foo
    puts "foo"
  end
  module_function :foo #ないとエラー
end

Foo.foo