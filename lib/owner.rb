require 'pry'


class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:cats => [], :dogs => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    @pets[:cats] << cat
  end

  def cats
    @pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    @pets[:dogs] << dog
  end

  def dogs
    @pets[:dogs]
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def walk_dogs
     binding.pry
    @pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  # def walk_dogs
  #   @pets[:dogs].each {|x| x.mood = "happy"}
  # end

end
