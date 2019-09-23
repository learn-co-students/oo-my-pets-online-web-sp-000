class Cat
  @@all = []
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  # code goes here
  
  def initialize(name, owner_oi)
    @name = name 
    @mood = "nervous"
    @owner = owner_oi
    @@all << self
  end

  def self.all
    @@all
  end
    
end

# rspec spec/01_owner_spec.rb
# rspec spec/02_cat_spec.rb
# rspec spec/03_dog_spec.rb