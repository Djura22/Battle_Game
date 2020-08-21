feature 'Turns' do



	context 'seeing whos turn it currently is' do
		scenario 'beginning of game' do
			sign_in_and_play
			expect(page).to have_content "Richard, you're up!"
		end

    scenario 'Shows next players turn' do
      sign_in_and_play
	    click_button("Attack")
	    click_button("Go back to arena")
	    expect(page).not_to have_content "Richard, you're up!"
	    expect(page).to have_text("Albert, you're up!")
	  end
	end

end
