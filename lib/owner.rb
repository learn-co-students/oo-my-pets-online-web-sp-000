require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
    # binding.pry
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

end
