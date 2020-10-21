class Foo
end

class Bar < Foo
end

class Baz < Bar
end

baz = Baz.new
p baz.is_a?(Baz) #=> true 
p baz.is_a?(Bar) #=> true
p baz.is_a?(Foo) #=> true