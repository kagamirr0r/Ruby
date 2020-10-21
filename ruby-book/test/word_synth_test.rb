require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test
  def test_play
    synth =  WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf',effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!',effect.call('Ruby is fun!')
  end

  def test_loud
    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!',effect.call('Ruby is fun')
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf',synth.play('Ruby is fun!')
  end
end
