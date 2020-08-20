require 'game'

describe Game do
  let(:richard) { double :richard, :name=>'Richard', :hitpoints=>100  }
	let(:albert) { double :albert, :name=>'Albert', :hitpoints=>100  }

  subject(:game) { Game.new(richard,albert) }

  describe 'attack' do

    it 'responds with 1 arg being player to attack' do
      expect(subject).to respond_to(:attack).with(2).arguments
    end

    #it 'expect opponent to receive damage' do
  	#	allow(albert).to receive(:damage)
  	#	richard.attack(albert)
  	#	expect(albert).to receive(:damage)
  	#end
  end
end
