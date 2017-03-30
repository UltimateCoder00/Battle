require 'game'

describe Game do

  subject(:game) {described_class.new(steve, bob)}

  let(:steve) {double('Steve')}
  let(:bob) {double('Bob')}

  describe '#attack' do
    it 'attacks the player' do
      allow(steve).to receive(:receive_damage)
      game.attack(steve)
    end
  end

  describe 'players' do
    it '#player_1' do
      expect(game.player_1).to eq steve
    end

    it '#player_2' do
      expect(game.player_2).to eq bob
    end
  end
end
