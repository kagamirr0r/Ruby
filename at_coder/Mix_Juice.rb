n,k = gets.chomp.split(' ').map(&:to_i)
p = gets.chomp.split(' ').map(&:to_i)

puts p.sort.first(k).sum

