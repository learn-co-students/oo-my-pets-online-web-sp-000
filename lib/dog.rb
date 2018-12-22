class Dog
  # code goes here
  attr_accessor :mood, :name
  #attr_reader 

  def initialize(name)
    self.name = name
    self.mood = "nervous"
  end
end
