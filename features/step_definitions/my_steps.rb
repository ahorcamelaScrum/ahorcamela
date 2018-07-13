Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^ingresa las letras "([^"]*)"$/) do |letras|
  	letras.split('').each do | letra |
		fill_in("letraEnviar", :with => letra)
		click_button("Enviar")
	end
end


Then(/^debo ver un albur$/) do
	alburMostrado = find("h2").text
	contenido = Ahorcado::ALBURES.include? alburMostrado
	expect(contenido).to eq true  

end
