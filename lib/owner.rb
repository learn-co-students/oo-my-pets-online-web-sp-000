require "pry"
class Owner
  attr_reader :species, :name
  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    self.save
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def species
    @species
  end
    
  def say_species
    "I am a #{species}."
  end
  
  def cats
    Cat.all.select do |d_cat|
      d_cat == self
    end
  end
    
  def buy_cat(a_name)
    new_cat = Cat.new(a_name, self)
  end
    
end