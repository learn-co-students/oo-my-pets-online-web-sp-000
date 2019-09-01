class Owner
  attr_accessor :pets, :dogs, :cats
  attr_reader :species, :name

  @@all = []
  @@count = 0
  @@pets = {:dogs => [], :cats => []}

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end

  def pets
    @@pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

   def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

end
