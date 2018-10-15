class Owner

    attr_reader :species
    attr_accessor :owner, :name, :pets
    @@all = []
    
    def initialize(species)
        @species = species
        @@all << self
        @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
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
        "I am a #{species}."
    end

    def buy_fish(name)
            fish = Fish.new(name)
            pets[:fishes] << fish
    end

    def buy_cat(name)
        cat = Cat.new(name)
        pets[:cats] << cat
    end

    def buy_dog(name)
        dog = Dog.new(name)
        pets[:dogs] << dog
    end

    def walk_dogs
        mydogs = pets[:dogs]
        mydogs.collect do |dog|
            dog.mood = "happy"
        end
    end

    def play_with_cats
        mycats = pets[:cats]
        mycats.collect do |cat|
            cat.mood = "happy"
        end
    end

    def feed_fish
        myfish = pets[:fishes]
        myfish.collect do |fish|
            fish.mood = "happy"
        end
    end

    def sell_pets
        pets.each do |type, pets|
            pets.collect do |pet|
                pet.mood = "nervous"
            end
        end
        pets.clear
    end

    def list_pets
        "I have " + pets[:fishes].size.to_s + " fish, " + pets[:dogs].size.to_s + " dog(s), and " + pets[:cats].size.to_s + " cat(s)."
    end
end









