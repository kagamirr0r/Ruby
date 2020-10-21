n = gets.to_i
a = gets.split(' ').map(&:to_i).sort.reverse
alice = 0
bob = 0

0.step(n-1,2) do |i|
  alice += a[i]
  bob += a[i+1] unless a[i+1].nil?
end

p alice - bob
