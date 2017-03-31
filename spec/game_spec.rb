require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#initialization' do
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

  describe '#attack' do
    it 'damages a player' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turn' do
    it 'switches player 1 to player 2' do
      expect(game.switch_turn).to eq player_2
    end
  end

  describe '#game_over' do
    it "ends the game when a player's HP reaches 0" do
      allow(player_1).to receive(:hit_points).and_return(0)
      game.game_on?
      expect(game.game_over).to eq true
    end
  end

end
