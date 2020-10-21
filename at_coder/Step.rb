n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
sum = 0

(n-1).times do |i|
  if a[i] > a[i+1]
    sum += a[i] - a[i+1] 
    a[i+1] = a[i] 
  end
end

puts sum