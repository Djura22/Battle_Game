require 'player'

describe Player do
	subject(:richard) { Player.new("Richard") }

  describe '#name' do

    it 'returns its name' do
  	  expect(richard.name).to eq "Richard"
    end

  end

  describe 'hitpoints' do

  	it 'returns player hitpoints' do
  		expect(richard.hitpoints).to eq 100
  	end
  end

end