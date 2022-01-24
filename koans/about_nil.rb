require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutNil < Neo::Koan
  def test_nil_is_an_object
    # assert_equal __, nil.is_a?(Object), "Unlike NULL in other languages"
    assert_equal true, nil.is_a?(Object), "Unlike NULL in other languages" # answer

    # MEDITATION: Nil is an object, just like the type of null in JS (but the similarity ends there, since null in JS is a primitive value). 
  end

  def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
    # What happens when you call a method that doesn't exist.  The
    # following begin/rescue/end code block captures the exception and
    # makes some assertions about it.
    begin
      nil.some_method_nil_doesnt_know_about
    rescue Exception => ex
      # What exception has been caught?
      assert_equal NoMethodError, ex.class

      # What message was attached to the exception?
      # (HINT: replace __ with part of the error message.)
      # assert_match(/__/, ex.message)
      assert_match(/undefined method `some_method_nil_doesnt_know_about' for nil:NilClass/, ex.message) # answer
    end

    # MEDITATION: Since nil is an object, this seem to tell me that nil does not signify "nothingness" in Ruby, if by nothingness, we mean that there is no existing object. If a method is called from it, it will not trigger pointer errors just like in other languages (C, C++?, Java?), but instead, it will just trigger an exception saying that what does not exist is the method. What's interesting in the error message it is has backticks as opening and single quote as closing syntax for the message.
    # rescue is like throw in JS
  end

  def test_nil_has_a_few_methods_defined_on_it
    # assert_equal __, nil.nil?
    assert_equal true, nil.nil? # answer
    # assert_equal __, nil.to_s
    assert_equal "", nil.to_s # answer
    # assert_equal __, nil.inspect
    assert_equal "nil", nil.inspect # answer

    # THINK ABOUT IT:
    #
    # Is it better to use
    #    obj.nil?
    # or
    #    obj == nil
    # Why?
    #
    
    # MEDITATION: 
    # 1. Nil is nil. .nil? seems to be a method that returns true if the object is nil
    # 2. Nil, if converted to string returns an empty one.
    # 3. inspecting the value of nil returns the string "nil"
    # For now, i assume that obj.nil? is better as it is OOP style, as i'm not sure how == behaves. My guess is using == compares two variables' values, in this case, we are using the nil object, while obj.nil? checks if obj is nil, which is what we really want. It's also kind of more readable too.
  end

end
