module Lion
  def cryLion
    puts "ガオー！"
  end
end
 
module Cat
  def cryCat
    puts "ニャー"
  end
end
 
class Animal
  include Lion, Cat
end

obj = Animal.new

obj.cryLion
obj.cryCat