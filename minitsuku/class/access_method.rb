class Person
  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

john = Person.new
john.name = "John"
p john.name

bob = Person.new
bob.name = 'Bob'
p bob.name


class Greeting
  attr_reader :hello
  attr_writer :bye
  attr_accessor :pardon
end

greeting = Greeting.new

p greeting.hello
# p greeting.hello = "Hello" => Error

# p greeting.bye => Error
p greeting.bye = "Bye"

greeting.pardon = "Sorry"
p greeting.pardon