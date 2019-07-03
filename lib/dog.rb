class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")        #Dog init with a name and nervous mood
    @name = name
    @mood = mood
  end

#end
