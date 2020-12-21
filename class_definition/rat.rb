class C
  class << self
    def a_class_method
      "C.a_class_method()"
    end
  end
end

class D < C; end

p C.singleton_class
p D.singleton_class
p D.singleton_class.superclass
p C.singleton_class.superclass

# class C
#   def a_method
#     "C#a_method()"
#   end
# end

# class D < C; end

# obj = D.new
# p obj.a_method

# class << obj
#   def a_singleton_method
#     "obj#a_signleton_method()"
#   end
# end

# p obj.a_singleton_method
# p obj.singleton_class
# p obj.singleton_class.superclass
