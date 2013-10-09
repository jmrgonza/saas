require "test/unit"
require "hw_0_1.rb"

class TestHW < Test::Unit::TestCase
  def test_sum
    assert_equal(0, sum([]))
    assert_equal(0, sum([0]))
    assert_equal(5, sum([5]))
    assert_equal(3, sum([1,1,1,0]))
    assert_equal(6, sum([1,2,3]))
    assert_equal(10, sum([1,2,3,4]))
  end
  
  def test_max_2_sum
    assert_equal(0, max_2_sum([]))
    assert_equal(0, max_2_sum([0]))
    assert_equal(1, max_2_sum([1]))
    assert_equal(-1, max_2_sum([-1]))
    assert_equal(6, max_2_sum([6]))  
    assert_equal(0, max_2_sum([0,0]))
    assert_equal(1, max_2_sum([0,1]))
    assert_equal(0, max_2_sum([-1,1]))
    assert_equal(-3, max_2_sum([-1,-2]))
    assert_equal(5, max_2_sum([3,2]))
    assert_equal(5, max_2_sum([1,2,3]))
    assert_equal(12, max_2_sum([1,7,3,5]))
    assert_equal(12, max_2_sum([7,5,1,4]))
    assert_equal(4, max_2_sum([-11,-2,3,1]))
    assert_equal(1, max_2_sum([0,0,1]))
  end
end

