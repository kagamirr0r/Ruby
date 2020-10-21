a = [1,2,3,4,5]

##index
a[0] #=> [1]
a[1,3] #=> [2, 3, 4] index1から3つの値を取り出す
a[-6] #=> nil 指定不可能だとnilになる

##index複数指定
a.values_at(0,2,4) #=> [1, 3, 5] indexピンポイントで取り出す

##負のindex
a[-1] #=>[5] 後ろから1つ目
a[-2] #=>[4] 後ろから2つ目


##last
a.last #=>[5] a[-1]と同じ
a.last(2) #=>[4,5] a[-1,-2]と同じ


##first
a.first #=>[1] a[0]と同じ
a.first(2) #=>[1,2] a[0,1]と同じ

a[-3] = 10 #=>[1,2,10,4,5] (後ろから３つ目を置き換える)

## select
a = [1,2,3,4,5]
a.select { |n| n.even? } #=> [2,4]


##追加
a =[]
a << 1
a #=> [1]

a =[]
a.push(1)
a #=> [1]


##置き換え
a = [1,2,3,4,5]
a[1,3] = 100 #=> [1,100,5] index1から3つ分を丸々置き換える
a[-6] = 10 #=> 指定不可能だとerror


##delete
a = [1,2,3,4,5,6]
a.delete(2) #=> 2 引数の値が消される
a #=> [1,3,4,5,6]

a.delete(10) #=> 存在しないとnil


##連結
a = [1]
b = [2,3]

a.concat(b) #あまり使わない 破壊的
a #=> [1,2,3] 変更される
b #=> [2,3]  変更されない

a + b #実用的
a #=> [1,2,3]

a #=> [1]
b #=> [2,3]


##集合演算（非破壊的）
a = [1,2,3]
b = [3,4,5]

#和集合
a | b #=> [1,2,3,4,5,6]

#差集合
a - b #=> [1,2] aから重なっている3が除かれる

#積集合
a & b #=> [3] 重なっている3が返される

#Setクラス
require 'set'
a = Set.new([1,2,3])
b = Set.new([3,4,5])
a | b #=> #<Set: {1, 2, 3, 4, 5}>
a - b #=> #<Set: {1, 2}>
a & b #=> #<Set: {3}>

##多重代入
e,f = 100,200,300
e #=> 100
f #=> 200 300は切り捨てられる

e,*f = 100,200,300
e #=> 100
f #=> [200,300] 切り捨てられない


##配列の配列
a = []
b = [1,2]
a.push(1) #=> [1]

a.push(b) #=> [1,[2,3]]

a.push(*b) #=> [1,2,3]

a = [1,2,3]
[a] #=> [[1,2,3]]
[*a] #=> [1,2,3]
[-1,0,*a,4,5] #=> [-1,0,1,2,3,4,5] 

# ブロック引数
dimentions = [
  [10,20],
  [30,40],
  [50,60]
]

areas = []

dimentions.each do |length,width| #引数を二つ用意すると配列内の要素が取り出せる
  areas << length * width
end
areas


## 可変長引数
def メソッド名(引数1,引数2,*可変長引数)
end

def greeting(*names)
  "#{names.join('と')}さん、こんにちは！"
end

greeting("田中","佐藤")

## 等価判定
[1,2,3] == [1,2,3] #=> true
[1,2,3] == [1,2,4] #=> false


## %記法
['apple','melon','orange'] #=> ['apple','melon','orange']
%w!apple melon orange! #=> ['apple','melon','orange']
%w(apple melon orange) #=> ['apple','melon','orange']
%w(big\ apple small\ melon orange) #=> ["big apple", "small melon", "orange"]


##文字列
a = 'abcdef'
a[2] #=> 'c'
a[1,3] #=> 'bcd' 2文字目から3文字分取得
a[-1] #=> 'f'
a[0] = 'X' #=> "Xbcdef"
a[1,3] = 'Y' #=> ""XYef"" 2文字目から3文字分'Y'にする

#文字列を配列にする
'ruby'.chars #=> ['r','u','b','y']
'Ruby;Java;Perl;PHP'.split(";") #=> ["Ruby","Java","Perl","PHP"]


## Array.new
a = Array.new(5) #=> [nil,nil,nil,nil,nil]
a = Array.new(5,0) #=> [0, 0, 0, 0, 0]
a = Array.new(10) {|n| n % 3 + 1} #=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

# 注意
a = Array.new(5,'kagami') #=> ["kagami", "kagami", "kagami", "kagami", "kagami"]
a[0].upcase! #=> "KAGAMI"
a #=> ["KAGAMI", "KAGAMI", "KAGAMI", "KAGAMI", "KAGAMI"] 同じオブジェクトを参照しているため全部大文字になっちゃう

a = Array.new(5) {'kagami'} #=> ["kagami", "kagami", "kagami", "kagami", "kagami"]　ブロックが呼ばれるたびにオブジェクトを初期化
a[0].upcase! #=> "KAGAMI"
a #=> ["KAGAMI", "kagami", "kagami", "kagami", "kagami"] 一つ一つ違うオブジェクトを参照している


## with_indexシリーズ
#each
fruits = ["apple","orange","melon"]
fruits.each_with_index {|fruit,i| puts "#{i}: #{fruit}"} #元々あるメソッド
#=> 0: apple
#   1: orange
#   2: melon

fruits.each.with_index(1) {|fruit,i| puts "#{i}: #{fruit}"} # each + with_index indexの始まりを指定できる
#=> 1: apple
#   2: orange
#   3: melon

dimentions = [
  [10,20],
  [30,40],
  [50,60]
]
dimentions.each_with_index do |(length,width),i| # 配列の配列を受け取る時は()で引数を囲む でないとうまく受け取れないぞ
  puts "length: #{length}, width: #{width}, i:#{i}"
end
#=>length: 10, width: 20, i:0
#  length: 30, width: 40, i:1
#  length: 50, width: 60, i:2

#map
fruits.map.with_index {|fruit,i| "#{i}: #{fruit}" } # map + with_index
#=> ["0: apple", "1: orange", "2: melon"]

fruits.map.with_index(10) {|fruit,i| "#{i}: #{fruit}" }
#=> ["10: apple", "11: orange", "12: melon"]

#delete
fruits.delete_if.with_index {|fruit,i| fruit.include?('a') && i.odd?} # delete + with_index
#=> ["apple", "orange"]

##ブロック
a = [1,2,3]
a.delete(10) #=> nil でも、、、

a.delete(10) do
  "NG"
end
#=> NG ブロックにすると戻り値を指定できる

a.delete(10) { "NG" } #=> NG これでもOK

names = ["田中","鈴木","佐藤"]
names.map{ |name| "#{name}さん"}.join('と') #=>"田中さんと鈴木さんと佐藤さん"
# mapメソッドの戻り値にメソッドをつなげてもOK


## いろいろなブロック
File.open("./sample.txt","w") do |file| #File.openとブロックを使うことでFileを閉じてくれる
  file.puts("1行目のテキストです")
  file.puts("2行目のテキストです")
  file.puts("3行目のテキストです")
end

##繰り返し系
a = []
10.upto(14) { |n| a << n } #数値を増やしながら処理をする
a #=> [10, 11, 12, 13, 14]

a = []
14.downto(10) { |n| a << n } #数値を増やしながら処理をする
a #=> [10, 11, 12, 13, 14]

a = []
1.step(10,2) { |n| a << n}
a #=> [1, 3, 5, 7, 9]

a =[]
while a.size < 5
  a << 1
end
a #=> [1,1,1,1,1]

a =[]
a << 1 while a.size < 5 
a #=> [1,1,1,1,1]


nubmers = [1,2,3]
alphabets = ['a','b','c']
hiaraganas = ['あ','い','う']

nubmers.each do |number|
  alphabets.each do |alphabet|
    hiaraganas.each do |hiaragana|
      puts "#{number}#{alphabet}#{hiaragana}"
    end
  end
end
#=> 1aあ
#   1aい
#   1aう
#   1bあ
#   1bい
#   1bう
#   1cあ
#   1cい
#   1cう
#   2aあ
#   2aい
#   2aう
#   2bあ
#   2bい
#   2bう
#   2cあ
#   2cい
#   2cう
#   3aあ
#   3aい
#   3aう
#   3bあ
#   3bい
#   3bう
#   3cあ
#   3cい
#   3cう