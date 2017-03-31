class Game
  attr_reader :player, :current_turn

  def initialize(player_1, player_2)
    @player = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    player.first
  end

  def player_2
    player.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(current_turn)
    if current_turn == player_1
      player_2
    else
      player_1
    end
  end
end
