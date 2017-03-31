require 'player'

describe Player do
  subject(:ruan) {described_class.new('Ruan')}
  subject(:elaine) {described_class.new('Elaine')}

  describe '#initialization' do
    it 'should return a players name' do
      expect(ruan.name).to eq 'Ruan'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(ruan.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'should reduce player 2\'s HP by 10' do
      expect { ruan.receive_damage }.to change{ ruan.hit_points }.by -10
    end
  end

end
