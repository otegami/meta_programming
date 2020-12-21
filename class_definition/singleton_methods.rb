str = "just a regular string"

def str.title?
  p self
  self.upcase == self
end

p str.title?
p str.methods.grep(/title?/)
p str.singleton_methods
