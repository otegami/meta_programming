require "test/unit"

module ChcekedAttributes

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def attr_checked(attribute, &validation)
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value)
        instance_variable_set("@#{attribute}", value)
      end

      define_method "#{attribute}" do
        instance_variable_get "@#{attribute}"
      end
    end
  end
end

class Person
  include ChcekedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end

class TestCheckedAttributs < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 18
    assert_equal 18, @bob.age
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, "Invaid attribute" do
      @bob.age = 17
    end
  end
end
