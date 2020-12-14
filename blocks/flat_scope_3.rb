my_var = "成功"

MyClass = Class.new do
  puts "クラス定義の中は、#{my_var}"

  define_method :my_method do
    "メソッド定義の中は、#{my_var}"
  end
end

puts MyClass.new.my_method
