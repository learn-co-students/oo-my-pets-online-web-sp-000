class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def go_for_a_walk
    @mood = "happy"
  end

  def get_sold
    @mood = "nervous"
  end
end
