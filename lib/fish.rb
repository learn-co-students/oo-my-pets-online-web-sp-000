class Fish

  # code goes here
attr_accessor :owner, :mood
attr_reader :name

def initialize(name, mood="nervous")
  @mood = mood
  @name = name
  @pets = []
end

#  def self.mood=
#    @mood
#  end


end
