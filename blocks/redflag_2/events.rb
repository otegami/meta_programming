def monthly_sales
  110
end

target_sales = 100

event "月間売り上げが驚くほど高い" do
  monthly_sales > target_sales
end

event "月間売り上げが底無しに低い" do
  monthly_sales < target_sales
end
