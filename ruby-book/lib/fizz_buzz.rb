def fizz_buzz(number)
  if number % 15 ==0
     p 'Fizz Buzz'
  elsif number % 3 == 0
    p 'Fizz'
  elsif number % 5 == 0
    p 'Buzz'
  else
    p number.to_s
  end
end

fizz_buzz(15)
fizz_buzz(5)
fizz_buzz(3)