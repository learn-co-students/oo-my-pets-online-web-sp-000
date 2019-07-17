class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    self.owner.add_dog(self)
  end

  def mood=(mood)
    @mood = mood
  end

  def self.all
    @@all
  end

end
