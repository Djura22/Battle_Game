require 'game'

describe Game do
  let(:richard) { double :richard }
	let(:albert) { double :albert }

  subject(:game) { described_class.new }

  describe 'attack' do

    it 'responds with 1 arg being player to attack' do
      expect(subject).to respond_to(:attack).with(1).arguments
    end

    it 'expect opponent to receive damage' do
  	   expect(albert).to receive(:damage)
       game.attack(albert)
  	end
  end
end
