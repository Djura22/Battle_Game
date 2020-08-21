feature 'Attack' do

	scenario 'Player hits attack button and receives confirmation' do
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_text("Richard hit Albert!")
	end

	scenario 'Player attack changes opponents hp -10' do
		sign_in_and_play
		click_button("Attack")
		click_button("Go back to arena")
		expect(page).to have_text("Albert: 90hp")
	end




end
