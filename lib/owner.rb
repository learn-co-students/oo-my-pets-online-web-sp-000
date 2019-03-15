class Owner
  attr_accessor :pets
  @@all = []

  def initialize(pet)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << @pets
  end

  def self.all
    @@all
  end
end
