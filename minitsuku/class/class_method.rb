# class HelloRuby
#   def HelloRuby.greeting #クラスメソッド
#     puts("Hello Ruby!")
#   end
# end

# HelloRuby.greeting

# class HelloRuby
#   def foo
#     puts("foo")
#   end
# end
# class << HelloRuby
#   def greeting
#     puts("Hello! Ruby!")
#   end
# end
# HelloRuby.greeting
# foo = HelloRuby.new
# foo.foo #=> foo

class HelloRuby
  def self.greeting
    puts "Hello Ruby!"
  end
end

HelloRuby.greeting #=> Hello Ruby!