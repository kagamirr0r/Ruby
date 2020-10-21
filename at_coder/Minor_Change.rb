# s = []
# t = []
s = gets.chomp.chars
t = gets.chomp.chars
count = 0

s.each_with_index do |c,i|
  count += 1 unless c == t[i]
end

puts count