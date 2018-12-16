class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets.collect do |species, walk|
      if species == :dogs
        walk.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, play|
      if species == :cats
        play.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |species, feed|
      if species == :fishes
        feed.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |pets, sell|
      sell.each do |pet|
        pet.mood = "nervous"
      end
      sell.clear
    end
  end

  def list_pets
    dogs = @pets[:dogs].size
    cats = @pets[:cats].size
    fish = @pets[:fishes].size
     "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end



end
