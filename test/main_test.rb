
$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'main'

class MainTest < Test::Unit::TestCase
  def test_problem1
     a = [1,4,2,8,5,0,10,0,0,4,5,5,2,0,6,1,10,0,10,5,5]
     assert_equal(109, Bowling.score(a))
  end

  def test_problem2_strike_first
     a = [10,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
     assert_equal(14, Bowling.score(a))
  end

  def test_problem2_strike_second
     a = [10,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
     assert_equal(14, Bowling.score(a))
  end
end
