require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan
  def test_everything_is_an_object
    # assert_equal __, 1.is_a?(Object)
    assert_equal true, 1.is_a?(Object) # answer
    # assert_equal __, 1.5.is_a?(Object)
    assert_equal true, 1.5.is_a?(Object) # answer
    # assert_equal __, "string".is_a?(Object)
    assert_equal true, "string".is_a?(Object) # answer
    # assert_equal __, nil.is_a?(Object)
    assert_equal true, nil.is_a?(Object) # answer
    # assert_equal __, Object.is_a?(Object)
    assert_equal true, Object.is_a?(Object) # answer

    # MEDITATION: In ruby, values (primitive?) like number, decimal, string, nil, and Object (class?) is an object.
    # is_a accepts class as parameter and returns if class provided is the object's.
  end

  def test_objects_can_be_converted_to_strings
    # assert_equal __, 123.to_s
    assert_equal "123", 123.to_s # answer
    # assert_equal __, nil.to_s
    assert_equal "", nil.to_s # answer

    # MEDITATION: A number value can be converted to string using to_s. A nil value returns an empty string.
  end

  def test_objects_can_be_inspected
    # assert_equal __, 123.inspect
    assert_equal "123", 123.inspect
    # assert_equal __, nil.inspect
    assert_equal "nil", nil.inspect

    # MEDITATION: Inspecting the value of a number returns it's string value. Inspecting the value of nil returns the string "nil"
  end

  def test_every_object_has_an_id
    obj = Object.new
    # assert_equal __, obj.object_id.class
    assert_equal Integer, obj.object_id.class # answer

    # MEDITATION: Every object has an id. and every object id is of type Integer
  end

  def test_every_object_has_different_id
    obj = Object.new
    another_obj = Object.new
    # assert_equal __, obj.object_id != another_obj.object_id
    assert_equal true, obj.object_id != another_obj.object_id # answer

    # MEDITATION: No two objects has the same id.
  end

  def test_small_integers_have_fixed_ids
    # assert_equal __, 0.object_id
    assert_equal 1, 0.object_id # answer
    # assert_equal __, 1.object_id
    assert_equal 3, 1.object_id # answer
    # assert_equal __, 2.object_id
    assert_equal 5, 2.object_id # answer
    # assert_equal __, 100.object_id
    assert_equal 201, 100.object_id # answer

    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?

    # MEDITATION: Integers since they are objects, they have object ids that are also integers. The pattern is odd numbers? or if x is the integer value: 2x + 1
  end

  def test_clone_creates_a_different_object
    obj = Object.new
    copy = obj.clone

    # assert_equal __, obj           != copy
    assert_equal true, obj           != copy # answer
    # assert_equal __, obj.object_id != copy.object_id
    assert_equal true, obj.object_id != copy.object_id # answer

    # MEDITATION: clone creates a different object. by different / a clone, we mean, same type, maybe same value too, but different id!
  end
end
