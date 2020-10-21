hello_proc = Proc.new do
  p 'hello'
end

hello_proc = Proc.new { p 'hello' }

hello_proc.call #=> 'hello'

add_proc = Proc.new { |a,b| p a + b } # add_proc = proc { |a,b| p a + b }でもOK
add_proc.call(10,59) #=> 69
add_proc.call(10,59,30) #=> 69 引数に甘い
add_proc.lambda? #=> false

#ラムダ
add_lambda = ->(a,b) { a + b }
add_lambda.call(10,20) #=> 30
add_lambda.call(10,20,30) #=> ArgumentError (wrong number of arguments (given 3, expected 2)) 引数に厳しい
add_proc.lambda? #=> true

