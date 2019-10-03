class Cat
  # code goes here
  attr_accessor :owner, :mood
  #attr_writer
  attr_reader :name
  @@all = []

  def initialize(name = "", owner = "", mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood

    #@owner.buy_cat(name)
    @@all << self
    self
  end

  def self.all
    @@all
  end


end
