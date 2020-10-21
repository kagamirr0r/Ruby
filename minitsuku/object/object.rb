class Apple
  attr_accessor :color, :price
  def initialize(color="赤",price=150)
    @color = color
    @price = price
  end

  def talking
    puts "色は#{@color},値段は#{price}円,つまりリンゴです"
  end
end

apple = Apple.new
apple.talking