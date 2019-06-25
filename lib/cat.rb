class Cat

attr_reader :name
attr_accessor :mood,  :owner


  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner
    @owner.cats << self
    # if owner
    # @owner = owner
    # end
  end

 @@all = []

 def self.all
   @@all
 end

 def owner
   @owner
 end


 def mood
   @mood
 end







end
