require 'minitest/autorun'
require './lib/rgb.rb'

class RgbTest < Minitest::Test

  def test_to_hex_each
    assert_equal '#000000',to_hex_each(0,0,0)
    assert_equal '#ffffff',to_hex_each(255,255,255)
    assert_equal '#043c78', to_hex_each(4,60,120)
  end

  def test_to_hex
    assert_equal '#000000',to_hex(0,0,0)
    assert_equal '#ffffff',to_hex(255,255,255)
    assert_equal '#043c78', to_hex(4,60,120)
  end

  def test_to_ints
    assert_equal [0,0,0], to_ints('#000000')
  end

  def test_to_ints_scan
    assert_equal [0,0,0], to_ints_scan('#000000')
  end
end