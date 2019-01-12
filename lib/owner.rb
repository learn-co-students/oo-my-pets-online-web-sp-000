class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.keys.each do |pet_type|
      @pets[pet_type].each do |pet|
        pet.mood = "nervous"
      end
      @pets[pet_type].clear
    end
  end

  def list_pets
    cat_count = 0
    dog_count = 0
    fish_count = 0
    @pets.keys.each do |pet_type|
      pet_count = @pets[pet_type].length
      if (pet_type == :cats)
        cat_count = pet_count
      elsif (pet_type == :dogs)
        dog_count = pet_count
      elsif (pet_type == :fishes)
        fish_count = pet_count
      end
    end
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
