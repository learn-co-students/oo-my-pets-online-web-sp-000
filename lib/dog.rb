class Dog
  # code goes here
  attr_accessor :mood, :name

  def initialize(name, mood = "nervous")
    self.name = name
  end
end
