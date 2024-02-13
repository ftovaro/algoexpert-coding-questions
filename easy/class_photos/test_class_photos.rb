require "minitest/autorun"
require_relative "class_photos"

class Test < Minitest::Test
  def test_1
    red = [5,8,1,3,4]
    blue = [6,9,2,4,5]
    assert_equal(true, Problem::class_photos(red, blue))
  end

  # def test_2
  #   assert_equal(nil, Problem::class_photos())
  # end
end
