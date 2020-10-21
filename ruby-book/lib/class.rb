class User
  # attr_accesor :first_name, :last_name, :age  アクセサメソッドが自動で定義される
  attr_reader :first_name, :last_name, :age     #読み取り用のメソッドを自動定義
  # attr_writer :first_name, :last_name, :age   #書き込み用のメソッドを自動定義
  def initialize(first_name,last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name #インスタンスメソッド
    "#{first_name} #{last_name}"
  end

end

users = []
users << User.new('Hojo','Masako',56)
users << User.new('Bob','Orden',55)

users.each do |user|
  puts "#{user.full_name} #{user.age}"
end

#user = User.new
#user.initialize # error private method `initialize' called

class Greeting
  def initialize(name)
    #@name = name #インスタンス変数は省略してもerrorにならずnilが返る
  end

  def hello 
    puts "Hello#{@name}!" #クラス内ではインスタンス変数を使える
  end 
end

greet = Greeting.new("Alice")
greet.hello #=> Hello!

class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def greeting
    p "Hello #{@name}"
  end

end

names = ["Alice","Bob","Calol"]
users = User.create_users(names)

users.each do |user|
  p user.greeting
end