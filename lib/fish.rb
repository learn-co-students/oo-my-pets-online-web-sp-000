class Fish
  # code goes here
  attr_accessor :mood, :name
  #attr_reader :name

  def initialize(name)
    self.name = name
    self.mood = "nervous"
  end
end
