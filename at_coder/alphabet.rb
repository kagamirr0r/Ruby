a = gets

# case a
# when /[A-Z]/
#   puts "A"
# when /[a-z]/
#   puts 'a'
# end

puts a.match?(/[A-Z]/) ? "A" : "a"