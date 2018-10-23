class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def play_with_owner
    @mood = "happy"
  end

  def get_sold
    @mood = "nervous"
  end
end
