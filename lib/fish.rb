class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def get_fed
    @mood = "happy"
  end

  def get_sold
    @mood = "nervous"
  end
end
