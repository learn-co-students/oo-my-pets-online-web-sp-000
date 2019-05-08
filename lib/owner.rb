class Owner

attr_accessor :name, :pets
attr_reader :species
@@all = []

def initialize(name, species="human")
  @name = name
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
end

def self.all
return @@all
end

def self.count
return @@all.size
end

def self.reset_all
  return @@all.clear.count
end

def say_species
return "I am a human."
end

def buy_fish(name)
pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def walk_dogs
  pets[:dogs].each do |d|
    d.mood = "happy"
  end
end

def play_with_cats
    pets[:cats].each do |c|
      c.mood = "happy"
    end
end

def feed_fish
  pets[:fishes].each do |f|
      f.mood = "happy"
  end
end

def sell_pets
  pets.each do |type, animals|
      animals.each do |pet|
      pet.mood = "nervous"
      end
  animals.clear
 end
end

def list_pets
"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end


end
