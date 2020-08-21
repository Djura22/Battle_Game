feature 'Turns' do

  scenario 'Player turn to switch after each attack' do
	  sign_in_and_play
	  click_button("Attack")
	  click_button("Go back to arena")
		expect(page).to have_text("Albert, you're up!")
	end

end
