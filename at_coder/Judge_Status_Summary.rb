n = gets.to_i

# count_ac = 0
# count_wa = 0
# count_tle = 0
# count_re = 0

count_ac,count_wa,count_tle,count_re = 0

# n.times do
#   a = gets.chomp
#   count_ac += 1 if a.match?(/^AC$/)
#   count_wa += 1 if a.match?(/^WA$/)
#   count_tle += 1 if a.match?(/^TLE$/)
#   count_re += 1 if a.match?(/^RE$/)
# end

n.times do
  a = gets.chomp
  case a
  when 'AC' then
    count_ac += 1
  when 'WA' then
    count_wa += 1
  when 'TLE' then
    count_tle += 1
  when 'RE' then
    count_re += 1
  end
end

puts "AC x #{count_ac}\nWA x #{count_wa}\nTLE x #{count_tle}\nRE x #{count_re}"
