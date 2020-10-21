def liquid?(tempreture)
  p 0 <= tempreture && tempreture < 100
end

liquid?(100)
liquid?(-1)

def r_liquid?(tempreture)
  p (0...100).include?(tempreture)
end

r_liquid?(100)
r_liquid?(99.9)
r_liquid?(0)

def charge(age)
  case age
  when 0..5
    p '0円'
  when 6..12
    p '300円'
  when 13..18
    p '600'
  else
    p '1000円'
  end
end
 charge(2)
 charge(6)
 charge(13)


p (1..5).to_a
p (1...5).to_a
p [*1..5]
p [*1...5]

numbers = (1..5).to_a
sum = 0

numbers.each{|n| sum += n }
p sum

sum = 0
(1..5).each {|n| sum += n}

p sum

numbers = []
(1..10).step(2) {|n| numbers << n}

p numbers