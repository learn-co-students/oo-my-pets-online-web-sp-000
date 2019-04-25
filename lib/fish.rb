class Fish
  # code goes here
    attr_accessor :mood
    attr_reader :name # Fish can't change its name
    def initialize(name)
      @name = name
      @mood = "nervous"
    end
end
