class String
  def self.inherited(subclass)
    puts "#{self} は、#{subclass}"
  end
end

class MyString < String; end

module M1
  def self.included(othermod)
    puts "M1 is included in #{othermod}"
  end
end

module M2
  def self.prepended(othermod)
    puts "M2 is prepended with #{othermod}"
  end
end

class C
  include M1
  prepend M2
end
