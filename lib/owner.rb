class Owner
  attr_reader :name, :owner, :species

  @@all= []

  def initialize(name)
    @name = name
    @owner = name
    @species = "human"
    @@all << self
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
end
