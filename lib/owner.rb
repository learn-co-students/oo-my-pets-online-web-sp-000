class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.collect do |species, number|
      if species == :dogs
        number.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, number|
      if species == :cats
        number.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |species, number|
      if species == :fishes
        number.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |species, number|
      number.each do |pet|
        pet.mood = "nervous"
      end
      number.clear
    end
  end

  def list_pets
    dogs_num = @pets[:dogs].size
    cats_num = @pets[:cats].size
    fish_num = @pets[:fishes].size
    return "I have #{fish_num} fish, #{dogs_num} dog(s), and #{cats_num} cat(s)."
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

end
