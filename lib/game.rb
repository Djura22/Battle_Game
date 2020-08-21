class Game

  

	def initialize(player_1, player_2)
		@players = [player_1, player_2]
		@player_turn = 0
  end

  def player_1
  	@players[0]
  end

  def player_2
  	@players[1]
  end

  def attack(victim)
    victim.damage
    next_player
  end

  def current_player
  	return @players[@player_turn]
  end

  def other_player
    return @players[(@player_turn + 1) % @players.size]
  end

  def next_player
  	@player_turn = (@player_turn +1) % @players.size
  end



end
