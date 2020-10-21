# 2次元平面上にN個の点があります。 i個目の点の座標は(Xi,Yi)です。
# これらのうち、原点からの距離がD以下であるような点は何個ありますか？
# なお、座標(p,q)にある点と原点の距離は√p2+q2で表されます。

n,d = gets.chomp.split(' ').map(&:to_i)
count = 0
n.times do
  x,y = gets.chomp.split(' ').map(&:to_i)
  x_expo = x ** 2
  y_expo = y ** 2
  count += 1 if Math.sqrt(x_expo + y_expo) <= d
end

puts count