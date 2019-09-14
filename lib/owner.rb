class Owner
  attr_reader :name, :owner, :species
  attr_accessor :pets

  @@all= []

  def initialize(name)
    @name = name
    @owner = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a #{@species}."
  end

 #class methods

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  #instance methods
  def cats
    return Cats.cats

  end
end
