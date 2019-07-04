class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species, pets = {:dogs => [], :cats => [] })
    @species = species
    @pets = pets
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end
end
