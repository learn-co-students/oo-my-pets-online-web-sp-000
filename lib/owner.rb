class Owner

  attr_accessor :name, :pets
  attr_reader :species


  @@owners = []


  def initialize(species)
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self

  end

  def self.all
    @@owners
  end

  def self.count
      @@owners.size
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_animal(name, species, species_class)
    animal = species_class.new(name)
    @pets[species] << animal
    animal.owner = self
  end
   def buy_fish(name)
    buy_animal(name, :fishes, Fish)
  end
   def buy_cat(name)
    buy_animal(name, :cats, Cat)
  end
   def buy_dog(name)
    buy_animal(name, :dogs, Dog)
  end
   def set_mood(species, mood)
    @pets[species].each do |animal|
      animal.mood = mood
    end
  end
   def walk_dogs
    set_mood(:dogs, "happy")
  end
   def play_with_cats
    set_mood(:cats, "happy")
  end
   def feed_fish
    set_mood(:fishes, "happy")
  end
   def sell_pets
    set_mood(:dogs, "nervous")
    set_mood(:cats, "nervous")
    set_mood(:fishes, "nervous")
    @pets.clear
  end
   def list_pets
    "I have #{pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
