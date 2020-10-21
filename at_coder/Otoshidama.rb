n,y = gets.chomp.split(' ').map(&:to_i)

0.upto(n) do |i|
  0.upto(n-i) do |j|
    if 10000 * i + 5000 * j + 1000 * (n - i - j) == y
      puts "#{i} #{j} #{n - i - j}"
      return 
    end
  end
end

puts '-1 -1 -1'