def to_hex_each(r,g,b)
  hex = "#"
  [r,g,b].each do |c|
    hex += c.to_s(16).rjust(2,'0')
  end
  hex
end

def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,c|
    hex + c.to_s(16).rjust(2,'0')
  end
end
# injectは繰り返し演算や繰り返し文字列連結に便利やなあ

def to_ints(hex)
  r,g,b = hex[1..2], hex[3..4], hex[5..6]
  [r,g,b].map {
    |c| c.hex
  }
end

def to_ints_scan(hex)
  hex.scan(/\w\w/).map(&:hex)
end