require 'player'

describe Player do
	subject(:richard) { Player.new("Richard") }
	subject(:albert) { Player.new("Albert") }

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

  describe 'damage' do

  	it 'reduceds hitpoints of opponent by 10' do
  		expect { albert.damage }.to change { albert.hitpoints }.by(-10)
  	end

  end





end