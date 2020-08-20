require 'player'

describe Player do
	subject(:richard) { Player.new("Richard") }

  describe '#name' do

    it 'returns its name' do
  	  expect(richard.name).to eq "Richard"
    end

  end

end