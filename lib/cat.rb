require "pry"
class Cat
  attr_accessor :name, :owner, :owner_obj
  
  @owner_obj = Owner.new
  def initialize(name, owner_obj)
    @name = name
    @owner = owner
  end
  
  def name
    @name
  end
  
end