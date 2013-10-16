require "test/unit"
require "hw_0_1.rb"
require "hw_0_2.rb"

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
  
  def test_sum_2_n
    assert(sum_to_n?([1,2,3,4],7))
    assert(sum_to_n?([1,2,3,4],6))
    assert(!sum_to_n?([1,2,3,4],8))
    assert(sum_to_n?([],0))
    assert(!sum_to_n?([],1))
    assert(sum_to_n?([3],3))
    assert(!sum_to_n?([4],3))
  end

  def test_hello
    assert_equal("Hello,Tom", hello("Tom"))
  end
  
  def test_binary_multiple_of_4?
    assert(binary_multiple_of_4?('0'))
    assert(binary_multiple_of_4?('00'))
    assert(binary_multiple_of_4?('000'))
    assert(binary_multiple_of_4?('0000'))
    assert(binary_multiple_of_4?('100'))
    assert(binary_multiple_of_4?('1000'))
    assert(binary_multiple_of_4?('10000'))
    assert(binary_multiple_of_4?('1100'))
    assert(binary_multiple_of_4?('11000'))
    assert(binary_multiple_of_4?('110000'))
    assert(binary_multiple_of_4?('10100'))
    assert(binary_multiple_of_4?('110100'))
    assert(binary_multiple_of_4?('1100100'))
    assert_equal(false, binary_multiple_of_4?('11001010'))
    assert_equal(false, binary_multiple_of_4?('110010101'))
    assert_equal(false, binary_multiple_of_4?('1'))
    assert_equal(false, binary_multiple_of_4?('01'))
    assert_equal(false, binary_multiple_of_4?('001'))
    assert_equal(false, binary_multiple_of_4?('101'))
    assert_equal(false, binary_multiple_of_4?('a1'))
    assert_equal(false, binary_multiple_of_4?('a00'))


  end
end

