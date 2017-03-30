require 'player'

describe Player do
  subject(:bob) {described_class.new('bob')}
  subject(:steve) {described_class.new('steve')}

  it 'Test method to return name' do
    expect(steve.name).to eq 'steve'
  end

  describe '#receive_damage' do
    it 'Reduces hit points by 10' do
      expect{steve.receive_damage}.to change{steve.hit_points}.by(-10)
    end
  end
end
