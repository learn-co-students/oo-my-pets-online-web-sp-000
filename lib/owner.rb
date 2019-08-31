class Owner
  attr_reader :name, :species
  @@all = []

  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|c| c.owner == self}
  end

  def dogs
    Dog.all.select {|d| d.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each {|d| d.mood = "happy" if d.owner == self}
  end

  def feed_cats
    Cat.all.each {|c| c.mood = "happy" if c.owner == self}
  end

  def sell_pets
    Cat.all.each do |c|
      if c.owner == self
        c.mood = "nervous"
        c.owner = nil
      end
    end
    Dog.all.each do |d|
      if d.owner == self
        d.mood = "nervous"
        d.owner = nil
      end
    end
  end

  def list_pets
    dog_count = 0
    cat_count = 0
    Dog.all.each {|d| dog_count += 1 if d.owner == self}
    Cat.all.each {|c| cat_count += 1 if c.owner == self}
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
