class Owner

@@all = []
def initialize(species)
  @name
  @species = species
  @species.freeze
  @@all << self
  # @name = name
  # @name.freeze
  # @@all << self
end
def name=(name)
  @name = name
  @name.freeze
  @@all << self
end
def species
  @species
end
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
