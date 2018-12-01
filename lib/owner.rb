class Owner
  attr_reader :name
  attr_accessor :pets
  @@owners = []

  def initialize(name)
    @name = name
    @pets = {cats: [], dogs: [], fishes: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    self.all.count
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets_arr|
      pets_arr.map do |pet|
        pet.mood = "nervous"
      end
      pets_arr.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
