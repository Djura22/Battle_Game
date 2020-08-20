
feature 'Enter player names' do
	scenario 'Expects players to input names and app shows player names' do
		visit('/')

		fill_in :player_name_1, with: 'Richard'
		fill_in :player_name_2, with: 'Albert'
		click_button "Submit"

		expect(page).to have_text("Richard Vs Albert")
	end
end
