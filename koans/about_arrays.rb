require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrays < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    # assert_equal __, empty_array.class
    assert_equal Array, empty_array.class # answer
    # assert_equal __, empty_array.size
    assert_equal 0, empty_array.size # answer

    # Meditation: Array new method creates / constructs an empty / 0 size array. Size returns the length of array, how many items in the array.
  end

  def test_array_literals
    array = Array.new
    assert_equal [], array

    array[0] = 1
    assert_equal [1], array

    array[1] = 2
    # assert_equal [1, __], array
    assert_equal [1, 2], array # answer

    array << 333
    # assert_equal ___, array
    assert_equal [1, 2, 333], array # answer

    # Meditation: Array literals can be created using square brackets. Assignment can be done using index. Adding to the array can be done using assignment, and << (push?)
  end

  def test_accessing_array_elements
    array = [:peanut, :butter, :and, :jelly]

    # assert_equal __, array[0]
    assert_equal :peanut, array[0] # answer
    # assert_equal __, array.first
    assert_equal :peanut, array.first # answer
    # assert_equal __, array[3]
    assert_equal :jelly, array[3] # answer
    # assert_equal __, array.last
    assert_equal :jelly, array.last # answer
    # assert_equal __, array[-1]
    assert_equal :jelly, array[-1] # answer
    # assert_equal __, array[-3]
    assert_equal :butter, array[-3] # answer

    # Meditation: 
    # 1. Using index 0 gets the first element.
    # 2. Using first method gets the first element.
    # 3. Using the how many elements as index value gets the last element
    # 4. Using last method gets the last element
    # 5. Using -1 as index gets the last element
    # 6. Adding to -1 as index gets you the next element starting from last element. Convenient!
    # 7. Also, Adding to 0 as index gets you the next element starting from first element
    # 8. Symbols are being used as elements.
  end

  def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    # assert_equal __, array[0,1]
    assert_equal :peanut, array[0,1] # answer
    assert_equal __, array[0,2]
    # assert_equal [:peanut], array[0,2] # answer
    # assert_equal __, array[2,2]
    assert_equal __, array[2,2] # answer
    # assert_equal __, array[2,20]
    assert_equal __, array[2,20] # answer
    # assert_equal __, array[4,0]
    assert_equal __, array[4,0] # answer
    # assert_equal __, array[4,100]
    assert_equal __, array[4,100] # answer
    # assert_equal __, array[5,0]
    assert_equal __, array[5,0] # answer

    # Meditations:
    # 1. Using two indexes, if only 1 element, will give you the item.
    # 2. 
  end

  def test_arrays_and_ranges
    assert_equal __, (1..5).class
    assert_not_equal [1,2,3,4,5], (1..5)
    assert_equal __, (1..5).to_a
    assert_equal __, (1...5).to_a
  end

  def test_slicing_with_ranges
    array = [:peanut, :butter, :and, :jelly]

    assert_equal __, array[0..2]
    assert_equal __, array[0...2]
    assert_equal __, array[2..-1]
  end

  def test_pushing_and_popping_arrays
    array = [1,2]
    array.push(:last)

    assert_equal __, array

    popped_value = array.pop
    assert_equal __, popped_value
    assert_equal __, array
  end

  def test_shifting_arrays
    array = [1,2]
    array.unshift(:first)

    assert_equal __, array

    shifted_value = array.shift
    assert_equal __, shifted_value
    assert_equal __, array
  end

end
