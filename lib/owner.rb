class Owner
  
  @@all = []
  
  def initialize(owner)
    @@all << owner
  end
  
  def self.all
    @all
  end
  
end