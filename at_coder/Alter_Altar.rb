# 祭壇に、左から右へと一列に並ぶN個の石が祀られています。
# 左からi個目(1≤i≤N)の石の色は文字ci として与えられ、ci が R のとき赤、W のとき白です。
# あなたは、以下の二種の操作を任意の順に何度でも行うことができます。

# 石を2個選び (隣り合っていなくてもよい)、それらを入れ替える。
# 石を1個選び、その石の色を変える (赤なら白に、白なら赤に)。
# 占い師によると、赤い石の左隣に置かれた白い石は災いを招きます。
# そのような白い石がない状態に至るには、最小で何回の操作が必要でしょうか。

n = gets.to_i
c_1 = gets.chomp
c_2 = c_1
c_3 = c_1

p c_1
p c_2
p c_3

count_a = 0
count_b = 0
count_c = 0
# count_d = 0

while c_1.match?(/WR/) do
  c_1.gsub!(/WR/,'RW')
  count_a += 1
end

while c_2.match?(/WR/) do
  c_2.gsub!(/WR/,'WW')
  count_b += 1
end

while c_3.match?(/WR/) do
  c_3.gsub!(/WR/,'RR')
  count_c += 1
end

# while c.match?(/WR/) do
#   c.gsub(/WR/,'RW')
#   count_d += 1
# end

p count_a
p count_b
p count_c
min = [count_a,count_b,count_c].min

puts min

