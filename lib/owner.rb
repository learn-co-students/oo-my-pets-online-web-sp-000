class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species # can't change species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def buy_fish(fish_name)
    # can buy a fish that is an instance of a fish class
    # knows about its fishes
    @pets[:fishes] << Fish.new(fish_name)
  end
  def buy_cat(cat_name)
    # buy a cat that is an instance of the cat class
    # knows about its cats
    @pets[:cats] << Cat.new(cat_name)
  end
  def buy_dog(dog_name)
    # buy a dog taht is an instance of that dog class
    # knows abouts its dogs
    @pets[:dogs] << Dog.new(dog_name)
  end
  def say_species
    # can say its species
    return "I am a #{@species}."
  end
  def walk_dogs
    @pets.collect do |species, mood|
      if species == :dogs
        mood.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, mood|
      if species == :cats
        mood.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  def feed_fish
    @pets.collect do |species, mood|
      if species == :fishes
        mood.each do |fishes|
          fishes.mood = "happy"
        end
      end
    end
  end
  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    num_fishes = @pets[:fishes].size
    return "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
  # Class methods, uses self
  def self.all #class method
    @@all
  end
  def self.count #class method
    @@all.count
  end
  def self.reset_all #class method
    @@all.clear
  end
end
