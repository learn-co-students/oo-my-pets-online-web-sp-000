class Cat
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name="name")
    @mood = "nervous"
    @name = name
    @species = "cat"
  end

end
