
class Player
	
  attr_reader :name, :hitpoints

  DEFAULT_HP = 100

	def initialize(name)
		@name = name
		@hitpoints = DEFAULT_HP
	end

	def attack(opponent)
    opponent.damage
	end

  def damage
    @hitpoints -= 10
  end

end
