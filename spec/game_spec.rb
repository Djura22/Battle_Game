require 'game'

describe Game do
  let(:player_1) { double :player_1 }
	let(:player_2) { double :player_2 }

  subject(:game) { described_class.new(player_1, player_2) }

  it 'creates an instance of class' do
    expect(game).to be_instance_of(Game)
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'attack' do

    it 'responds with 1 arg being player to attack' do
      expect(subject).to respond_to(:attack).with(1).arguments
    end

    it 'expect opponent to receive damage' do
  	   expect(player_2).to receive(:damage)
       game.attack(player_2)
  	end
  end

  describe 'current_player' do

    it 'expects player 1 to be first player' do
      expect(subject.current_player).to eq player_1
    end

  end

  describe 'other_player' do

    it 'expects player 2 to be other player on first turn' do
      expect(subject.other_player).to eq player_2
    end

  end

  describe 'next_player' do

    it 'expects player 2 to be current_player on next turn' do
      subject.next_player
      expect(subject.current_player).to eq player_2
    end

  end

end
