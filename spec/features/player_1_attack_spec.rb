feature 'Player 1 attack' do
	scenario 'Player 1 hits attack button and receives confirmation' do
		sign_in_and_play
		click_button "P1 attack"
		expect(page).to have_text("You hit Player 2!")
	end
end