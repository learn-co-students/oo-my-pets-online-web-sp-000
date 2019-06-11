class Owner
  # code goes here
  @@all = []
  @@count = 0

  attr_accessor :name, :pets
  attr_reader :species
  def initialize(name)
    @name = name
    @@all << self
    @@count = @@count + 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = "human"
  end
  # def self.count
  #   @@all.length
  # end
  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
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
    @pets.each do |type, sellPets|
      sellPets.map {|pet| pet.mood = "nervous"}
    end
    @pets.clear
    # @pets[:fishes].clear
    # @pets[:dogs].clear
    # @pets[:cats].clear
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def list_pets
# expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
