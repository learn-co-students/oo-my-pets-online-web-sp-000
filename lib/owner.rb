

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.count
    all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes].push(Fish.new(fish_name))
  end

  def buy_cat(cat_name)
    @pets[:cats].push(Cat.new(cat_name))
  end

  def buy_dog(dog_name)
    @pets[:dogs].push(Dog.new(dog_name))
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each { |type, pets| pets.each { |pet| pet.mood = "nervous"} }
    @pets = {}
  end

  def list_pets
    list = pets.collect do |type, pet_list|
      if type == :fishes
        "I have #{pet_list.size} fish,"
      elsif type == :dogs
        " #{pet_list.size} dog(s),"
      else
      " and #{pet_list.size} cat(s)."
      end
    end
    list.join
  end
  
end



