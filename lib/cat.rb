class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name # Cat can't change its name
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
