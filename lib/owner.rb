class Owner
  attr_reader :name, :species, :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def add_cat(cat)
    @cats << cat
  end

  def add_dog(dog)
    @dogs << dog
  end

  def buy_cat(name)
    Cat.new(name, self)
#    binding.pry
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      @cats = []
      @dogs = []
    end
  end

  def list_pet
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)." 
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

end
