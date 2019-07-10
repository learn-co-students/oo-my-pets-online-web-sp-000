require 'pry'

class Owner
attr_accessor :cats, :dogs
@@all = []
def initialize(name)
  @name = name
  @name.freeze
  @@all << self
  @species = "human"
  @cats = []
  @dogs = []

end

def name
  @name
end
def species
  @species
end
def say_species
   "I am a #{@species}."
end

def self.all
  @@all
end
def self.count
  @@all.count
end
def self.reset_all
  @@all.clear
end
def buy_cat(name)
  Cat.new(name, self)
end
def buy_dog(name)
  Dog.new(name, self)
end
#   it "walks the dogs which makes the dogs' moods happy" do
#     dog = Dog.new("Daisy", @owner)
#     @owner.walk_dogs
#     expect(dog.mood).to eq("happy")
#   end
# end

def walk_dogs
    @dogs.each do |dog|
    dog.mood = "happy"
  end
end
def feed_cats
 @cats.each do |cat|
   cat.mood = "happy"
 end
end

def sell_pets
#
  @dogs.each do |dog|
    dog.mood = "nervous"
  end
  @cats.each do |cat|
    cat.mood = "nervous"
  end

@dogs.each do |dog|
  dog.clear_owner
end
@cats.each do |cat|
  cat.clear_owner
end
end






def list_pets
  dogs = self.dogs.count
  cats = self.cats.count
  "I have #{dogs} dog(s), and #{cats} cat(s)."
end


end
