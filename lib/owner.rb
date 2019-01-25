class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish

  end

  def buy_cat

  end

  def buy_dog

  end

  def walk_dogs

  end

  def play_with_cats

  end

  def feed_fish

  end

  def sell_pets

  end

  def list_pets

  end

end
