require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test

  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_umeda_to_juso
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_juso_to_mikuni
    ticket = Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end

class User
end

user = User.new
User.superclass #=> Object
user.class #=> User
user.instance_of?(User) #=> true
user.is_a?(User) #=> true
user.is_a?(Object) #=> true
user.is_a?(String) #=> false

class Product
  attr_reader :name,:price
  def initialize(name,price)
    @name = name
    @price = price
  end
end

product = Product.new('A great movie',1000)
product.name #=> 'A great movie'
product.price #=> 1000

class DVD < Product

  def initialize(name,price,running_time)
    #@name = name
    #@price = price
    super(name,price)
    @running_time = running_time
  end
end

dvd = DVD.new('A great movie',1000,120)
dvd.running_time #=> 120

