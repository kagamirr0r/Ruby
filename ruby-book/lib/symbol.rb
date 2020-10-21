:apple.class #=> Symbol Rubyの内部では整数なので文字列より処理が早い
'aplle'.class #=> String

:apple == 'apple' #=> false
'apple'.to_sym == :apple #=> true シンボルにする
:apple.to_s == 'apple' #=> true 文字列にする

:apple.object_id #=> 1516828 常に一定
:apple.object_id #=> 1516828
'apple'.object_id #=> 70211898837420　常に変化
'apple'.object_id #=> 70211927823100
'apple'.object_id #=> 70211898802340

symbol = :apple
symbol.upcase! #=> NoMethodError 破壊的なメソッドは使えない（イミュータブル） 


## %記法
%s(ruby is fun) #=> :"ruby is fun"
%i(apple orange melon) #=> [:apple,:orange,:melon] 配列になる

name = "Alice"
%I(hello\ndoog-bye #{name.upcase}) #=> [:"hello\ngood-bye",:ALICE]


def user_exists?
  !!find_user
end