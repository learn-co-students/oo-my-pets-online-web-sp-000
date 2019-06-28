class Owner
  attr_reader :name, :species, :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats=[]
    @dogs=[]
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def new_dog(dog)
    @dogs<<dog
  end

  def new_cat(cat)
    @cats<<cat
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    @dogs.each {|dog| dog.mood = "nervous"}
    @dogs.each {|dog| dog.owner = nil}
    @dogs.clear
    @cats.each {|cat| cat.mood = "nervous"}
    @cats.each {|cat| cat.owner = nil}
    @cats.clear
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end


end
