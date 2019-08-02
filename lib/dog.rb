class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  # code goes here
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.dogs<< self
    @@all << self
  end

  def name
    @name
  end

  def self.all
      @@all
  end
end
