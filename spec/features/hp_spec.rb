

feature 'Player HP' do

	scenario 'Expects players to see their HP (hitpoints)' do
		visit('/')

		fill_in :player_name_1, with: 'Richard'
		fill_in :player_name_2, with: 'Albert'
		click_button "Submit"

		expect(page).to have_text("Albert: 100hp")
	end
end
