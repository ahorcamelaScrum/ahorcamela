Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^adivino la palabra "([^"]*)"$/) do |palabra|
	palabra.split('').each do | letra |
		fill_in("letraEnviar", :with => letra)
		click_button("Enviar")
	end
end

# Given(/^introduzco letra "([^"]*)"$/) do |letra|
#   fill_in("letraEnviar", :with => letra)
#   click_button("Enviar")
# end
