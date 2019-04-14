require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(data)
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def sell_pets
    #Var variable changes mood of all pets.
    arr = []
    var =  @pets.each_value {|v| v.each {|a| a.mood = "nervous"}}
    @pets.each_value {|v| v.clear}
    arr << var
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def feed_fish
    @pets[:fishes][-1].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][-1].mood = "happy"
  end

  def walk_dogs
    @pets[:dogs][-1].mood = "happy"
  end

  def buy_fish(new_f)
    @pets[:fishes] << Fish.new(new_f)
  end

  def buy_cat(new_c)
    @pets[:cats] << Cat.new(new_c)
  end

  def buy_dog(new_d)
    @pets[:dogs] << Dog.new(new_d)
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  end
