require "pry"
class Owner
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  owner_obj = Owner.new
  def name
    @name
  end
  
end