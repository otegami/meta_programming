class MyClass
  def testing_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var +=1
  end
end

obj = MyClass.new
p obj.testing_self

class C
  def public_method
    self.private_method
  end

  private
    def private_method
    end
end

C.new.public_method