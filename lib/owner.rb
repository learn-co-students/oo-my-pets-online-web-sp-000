class Owner

  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self                         #add all species to our class var array
    #@pets = {:dogs => [], :cats => []}
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.size
  end

  def self.reset_all
    return @@all.clear                  #clear (reset) our owner array
  end

end
