
Given(/^I am on home page$/) do
  
end

Given(/^And I put the values of lado1 as "([^"]*)", lado2 as "([^"]*)" and lado3 as "([^"]*)"$/) do |lado_1, lado_2, lado_3|
  on(HomePage).setTriangleSides(lado_1, lado_2, lado_3)
end

Given(/^And I click at button Calcular$/) do
  on(HomePage).clickCalculate
end

Given(/^Then the type of triangule showed is <type_of_triangle>$/) do |message|
  expect(on(HomePage).msg_type_triangle_element.include? message.to_s)
end