feature 'Enter player names' do
	scenario 'Expects players to input names and app shows player names' do
		sign_in_and_play
		expect(page).to have_text("Richard Vs Albert")
	end
end