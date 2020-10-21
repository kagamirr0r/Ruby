n,a,b = gets.split.map(&:to_i)
sum = 0

1.upto(n) do |i|
  digit_sum = i.to_s.chars.map(&:to_i).sum
  sum += i if digit_sum >= a && digit_sum <= b
end

puts sum
