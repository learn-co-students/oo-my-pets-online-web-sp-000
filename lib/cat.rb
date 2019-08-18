require "pry"
class Cat
  attr_accessor :name, :owner
  
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
  
  def name
    @name
  end
  
end