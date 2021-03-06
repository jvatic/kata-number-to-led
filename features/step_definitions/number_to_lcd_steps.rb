Transform /^the number "([^\"]*)"$/ do |to_convert|
  to_convert.to_i
end

When /^I convert (the number "[^\"]*") to LCD$/ do |number|
  @converted = NumberToLcd.convert(number)
end

Then /^I should get the following representation$/ do |lcd_representation|
  @converted.should == lcd_representation
end

