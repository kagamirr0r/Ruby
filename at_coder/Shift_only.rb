t = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
sum = 0

while a.all?(&:even?)
  a = a.map{|n| n / 2}
  sum += 1
end

puts sum