Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |espacios|
  expect(page.body).to match /#{espacios}/m
end

Then(/^debo ver "([^"]*)"$/) do |espacios|
  find_field('letra_1').value/m
end


