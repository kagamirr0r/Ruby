DEFAULT_PRICE = 0
DEFAULT_PRICE = 1000 #=> already initialized constant DEFAULT_PRICE
DEFAULT_PRICE #=> 1000 警告は出るが書き換えられる

class Product
  SOME_NAMES = ['Foo','Bar','Baz'].freeze

  def self.names_without_foo(names = SOME_NAMES)
    names.delete('Foo')
  end
end

Product.names_without_foo #=> FrozenError (can't modify frozen Array)
Product::SOME_NAMES[0].upcase! #=> "FOO" 要素は変更できちゃう

SOME_NAMES = ['Foo','Bar','Baz'].map(&:freeze).freeze #各要素をmapでfreezeして最後に配列をfreeze