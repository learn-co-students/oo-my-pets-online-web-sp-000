class Cat
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(given_name)
    @name = given_name
    @mood = "nervous"
  end
  
end