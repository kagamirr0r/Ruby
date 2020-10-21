n,x,t = gets.chomp.split(' ').map(&:to_i)

count = 1

until n - x * count <= 0 do
  count += 1
end

puts count * t