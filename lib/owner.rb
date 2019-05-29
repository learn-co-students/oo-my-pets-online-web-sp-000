require "pry"

class Owner
  attr_accessor :owner,:name, :pets
  
   @@all = []
   @@counter = 0
   
  def initialize(owner)
    @owner = owner
    @@all << self
    @@counter += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@counter
  end
  
  def self.reset_all
    @@counter = 0
  end
  
  
  
  def species
    @owner
  end  
  
  def say_species
    "I am a #{@owner}."
  end
  
  def pets
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(name)
    fish = Fish.new(name)

# => {:fishes=>[#<Fish:0x0000000002242a78 @mood="nervous", @name="Bubbles">],
# :cats=>[],
# :dogs=>[]}

# expect(owner.pets[:fishes].count).to eq(1)

    @pets[:fishes] << fish
    
  end
# @pets[:fishes].count  - unutar buy_fish
# => 1  
# @pets[:fishes].count - izvan svih def
# NoMethodError: undefined method `[]' for nil:NilClass
#from (pry):1:in `<class:Owner>'

end
