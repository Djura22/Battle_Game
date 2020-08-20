feature 'Player HP' do
  scenario 'Expects players to see their HP (hitpoints)' do
	  sign_in_and_play
		expect(page).to have_text("Albert: 100hp")
	end
end
