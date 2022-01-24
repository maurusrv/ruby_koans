#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    # assert false                # This should be true
    assert true # answer

    # MEDITATION: assert, in it's simplest form accepts a boolean value.
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    # assert false, "This should be true -- Please fix this"
    assert true, "This should be true -- Please fix this" # answer
    
    # MEDITATION: The first parameter of assert is boolean evaluator, the second parameter is the message?
  end

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    # expected_value = __
    expected_value = 2 # answer
    actual_value = 1 + 1

    assert expected_value == actual_value

    # MEDITATION: As mentioned that the first parameter of assert is a boolean evaluator, aside from a literal boolean value, it can also accepts an expression you want to evaluate. Using double equals only?
  end

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
    # expected_value = __
    expected_value = 2 # answer
    actual_value = 1 + 1

    assert_equal expected_value, actual_value

    # MEDITATION: assert_equal accepts 2 variables, which are used and evaluated.
  end

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    # assert_equal __, 1 + 1
    assert_equal 2, 1 + 1 # answer
  end
end
