require 'game'

describe Game do

  subject(:game) {described_class.new}

  let(:steve) {double('Steve')}
  let(:bob) {double('Bob')}

  describe '#attack' do
    it 'damages the player' do
      allow(steve).to receive(:attack)
      expect(game.attack).to receive(:receive_damage)
      bob.attack(steve)
    end
  end
end
