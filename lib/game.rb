class Game

  attr_reader :player

  def initialize(player = Player.new("John"))
    @player = player
  end

  def attack(player)
    player.receive_damage
  end
end
