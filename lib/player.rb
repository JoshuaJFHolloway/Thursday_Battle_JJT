class Player

  DEFAULT_HP = 100
  BASIC_ATTACK = 10

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= BASIC_ATTACK
  end

end
