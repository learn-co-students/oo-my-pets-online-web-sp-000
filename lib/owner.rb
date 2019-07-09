class Owner

@@all = []
def initialize(name)
  @name = name
  @name.freeze
  @@all << self
  @species = "human"
  # @species = species
  # @species.freeze
  # @@all << self
  # @name = name
  # @name.freeze
  # @@all << self
end
# def name=(name)
#   @name = name
#   @name.freeze
#   @@all << self
# end
def name
  @name
end
def species
  @species
end
def say_species
   "I am a #{@species}."
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
def buy_cat
  Cat.new
end



end
