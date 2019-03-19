# Add tests to me :D
require 'test/unit'
require_relative '../16_palindrome'
class Palindrome < Test::Unit::TestCase
    def test_palindrome
        assert_equal(false, palindrome("Hello"))
        assert_equal(true, palindrome("Racecar"))
        assert_equal(true, palindrome("ggeegg"))
    end
end