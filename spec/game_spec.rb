require 'game'

describe Game do

  subject { described_class.new(player, player) }

  let(:player) { double('player') }

  describe "#attack" do
    it 'damages the player' do

      expect(player).to receive(:receive_damage)
      subject.attack(player)

    end
  end



end
