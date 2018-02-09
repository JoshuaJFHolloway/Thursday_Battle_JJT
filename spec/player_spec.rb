require 'player'

describe Player do

  subject(:player)   { described_class.new("Hossway") }
  subject(:player_2) { described_class.new("Joshwah") }

  describe "#name" do
    it 'returns the name of the player' do
      expect(player.name).to eq "Hossway"
    end
  end

  describe "#hitpoints" do
    it 'returns the hitpoints' do
      expect(player.hp).to eq described_class::DEFAULT_HP
    end
  end

  # describe "#attack" do
  #   it 'damages the player' do
  #     expect(player_2).to receive(:receive_damage)
  #     player.attack(player_2)
  #   end
  # end

  describe "#receive_damage" do
    it 'reduces the player\s hit points' do
      expect { player_2.receive_damage }.to change { player_2.hp }.by(-10)
    end
  end
end
