## ハッシュの記法
{'japan' => 'yen','us' => 'doller', 'india' => 'rupee'}

# 追加
currencies = {'japan' => 'yen','us' => 'doller', 'india' => 'rupee'}
currencies['italy'] = 'euro'
currencies #=> {"japan"=>"yen", "us"=>"doller", "india"=>"rupee", "italy"=>"euro"}

#上書き
currencies = {'japan' => 'yen','us' => 'doller', 'india' => 'rupee'}
currencies['japan'] = '円'
currencies #=> {"japan"=>"円", "us"=>"doller", "india"=>"rupee"}

# 取得
currencies['india'] #=> 'rupee'
currencies['brazil'] #=> nil

currencies.each do |key,value|
  puts "#{key}:#{value}"
end
#=> japan:yen
#   us:doller
#   india:rupee

# 削除
currencies.delete('japan')
currencies #=> {'us' => 'doller', 'india' => 'rupee'}

currencies.delete('brazil') #=> nil

# 比較
a = {'x'=>1,'y'=>'2'}
b = {'x'=>1,'y'=>'2'}

a == b #=> true

a = {'x'=>1,'y'=>'2'}
b = {'y'=>'2','x'=>1}
a == b #=> true 並び順が違ってもtrue

# Symbolを使う
currencies = {:japan => 'yen', :us => 'dolloer', :india => 'rupee'} #文字列より早い
currencies[:japan] #=> 'yan'

currencies = {japan: 'yen', us: 'dolloer',india: 'rupee'} #一般的な書き方

##　よく使うメソッド
currencies = {japan: 'yen', us: 'dolloer',india: 'rupee'}

# keys
currencies.keys #=> [:japan, :us, :india]

# values
currencies.values #=> ["yen", "dolloer", "rupee"]

#has_key?(include?/member?)
currencies.has_key?(:japan) #=> true
currencies.has_key?(:thai) #=> false

#to_a
currencies.to_a
#=> [[:japan, "yen"], [:us, "dolloer"], [:india, "rupee"]]

## メソッドのキーワード引数

def buy_burger(menu, drink: true,potato: true) #キーワード引数を使いデフォルト値を設定
  if drink

  end
  if potato

  end
end

buy_burger('cheese',drink: true,potato: false) #キーワード引数を使うことによって呼び出しの可読性が上がる


