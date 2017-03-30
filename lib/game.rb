require_relative 'player'

class Game

  attr_reader :player

  def initialize(player_1 , player_2)
    @player = [player_1, player_2]
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    player.first
  end

  def player_2
    player.last
  end
end
