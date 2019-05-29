class Cat
  # code goes here
  attr_reader :name #use a reader so non purposeful name modifications can occur
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
