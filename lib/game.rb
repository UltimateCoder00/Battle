class Game
  attr_reader :player, :current_turn, :game_over

  def initialize(player_1, player_2)
    @player = [player_1, player_2]
    @current_turn = player_1
    @game_over = false
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
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

  def game_on?
    @game_over = true if player_dead?
  end

  def opponent_of(current_turn)
    if current_turn == player_1
      player_2
    else
      player_1
    end
  end

  private
  def player_dead?
    @current_turn.hit_points == 0
  end


end
