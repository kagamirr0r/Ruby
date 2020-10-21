module Greeter
  def hello 
    'hello'
  end
end

greeter = Greeter.new #=> NoMethodError モジュールからインスタンスは作れない

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log 'title is called'
    'A greate movie'
  end
end

class User
  include Loggable

  #private 外部から読み込ませたくない時
  log 'name is called'
  'Alice'
end

product = Product.new
product.title #=> "[LOG] title is called"
              #   "A great movie"
Product.include?(Loggable) #=> true
Product.include_modules #=> [Loggable,Kernel]
Product.ancestors #=> [Product,Loggable,Object,Kernel,BasicObject] モジュールとスーパークラスの情報が配列になって返ってくる
product = Product.new
pruduct.class.include?(Loggable) #=> true
product.class.included_modules #=> [Loggable, Kernel]
product.is_a?(Product) #=> true
product.is_a(Loggable) #=> true
product.is_a(Object) #=> true

Array.include?(Enumerable) #=> true
Hash.include?(Enumerable) #=> true


##有名モジュール
Enumerable module #map select find countなど eachメソッドが実装されているとincludeできる
Comparable module # < <= == > >=  など <=>演算子が実装されているとincludeできる
Kernel module # puts p print require loop など Objectクラスがincludeしている
Math #Math::PI #=> 3.141592653589793

##継承
class User
end
User.class #=> class 全てのクラスはClassクラスのオブジェクト
Class.superclass #=> Module ClassクラスはModuleクラスのオブジェクト

Module.superclass #=> Object ModuleクラスはObjectクラスのオブジェクト

##名前空間

module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

Baseball::Secound.new('Alice',13)

Clock::Second.new(23)
#Module単位で区切ればクラス名が被っても衝突しない

module Baseball
end

class Baseball::Second
  def initialize(player,uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

#すでにmoduleがある場合はネストしなくていい
#トップレベルのクラスを指定するときは ::Second.new('clock',10)みたいに ::をつける

module Loggable
  def self.log(text)
    puts "[LOG]#{text}"
  end
end

module Loggable
  class << self
    def log(text)
      puts "[LOG]#{text}"
    end
  end
end
Loggable.log("Hello")
#moduleから直接呼び出せる
