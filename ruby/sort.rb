require "test/unit"
require "pry"

def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first < right.first ? left.shift : right.shift)
  end
  result + left + right
end

class StringExtensionTest < Test::Unit::TestCase
  def test_sort_array
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
    arr = (1..rand(20)).map { rand(1..100) }
    assert_equal(merge_sort(arr), arr.sort)
  end
end
