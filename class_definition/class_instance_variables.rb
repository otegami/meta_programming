class MyClass
  @my_var = 1

  def self.read
    @my_var
    self
  end

  def write
    @my_var = 2
    self
  end

  def read
    @my_var
    self
  end
end

obj = MyClass.new
p obj.read
p obj.write
p obj.read
p MyClass.read
