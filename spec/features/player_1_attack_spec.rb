feature 'Player 1 attack' do

	scenario 'Player 1 hits attack button and receives confirmation' do
		sign_in_and_play
		click_button("P1 attack")
		expect(page).to have_text("Richard hit Albert!")
	end

	scenario 'Player attack changes opponents hp -10' do
		sign_in_and_play
		click_button("P1 attack")
		expect(page).to have_text("Albert: 90hp")
	end


end
