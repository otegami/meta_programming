# obj = Object.new

# singleton = class << obj
#   p self
# end

# p singleton.class

# def obj.my_singleton_method; end
# p singleton_class.instance_methods.grep(/my_/)

obj = Object.new
p obj.singleton_class
