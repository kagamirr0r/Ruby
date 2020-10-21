puts 'Start'
module Greeter
  def hello
    'hello'
  end
end
puts 'End' #=> "Start"
           #"End"


begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース: #{e.backtrace}"
end


begin
  1 / 0
rescue => ZeroDivisionError
  puts "0で割りました"
end

def country_of(country)
  case country
  when :japan
    'yen'
  when :india
    'rupee'
  when :us
    'doller'
  else
    raise '無効な国名です #{country}'
  end
end

country_of("ちんぽこ") #=> RuntimeError