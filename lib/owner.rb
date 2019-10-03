class Owner
  # code goes here
  attr_accessor
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"

    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cat|
      cat.owner == self
    }
  end

  def dogs
    Dog.all.select {|dog|
      dog.owner == self
    }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each {|dog|
      if (dog.owner == self)
        dog.mood = "happy"
      end
     }
  end

  def feed_cats
    Cat.all.each {|cat|
      if (cat.owner == self)
        cat.mood = "happy"
      end
     }
  end

  def list_pets

    num_cats = Cat.all.count {|cat|
      cat.owner == self
    }
    num_dogs = Dog.all.count {|dog|
      dog.owner == self
    }
    "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  def sell_pets
    Cat.all.each {|cat|
      if (cat.owner == self)
        cat.owner = nil
        cat.mood = "nervous"
      end
     }

     Dog.all.each {|dog|
       if (dog.owner == self)
         dog.owner = nil
         dog.mood = "nervous"
       end
      }

  end
end
