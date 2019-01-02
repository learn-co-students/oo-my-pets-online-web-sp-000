class Cat

  attr_reader :name
  attr_accessor :mood

  def initialize(name) #  can initialize a cat, initializes with a name
    @name = name # can't change its name
    @mood = "nervous" # initializes with a nervous mood, can change its mood
  end
end
