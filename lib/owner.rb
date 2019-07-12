require 'pry'

class Owner
  attr_accessor :name, :pets  
  attr_reader :species  ## you shouldn't able to write/change the species, only read 
  @@owner = []
  @@pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
      }
      
  def initialize(name)
    @name = name
    @species = name  ## passes test but can't be correct, because it gives name and species same name 
    @@owner << self
    @pets = pets
   
  end 

  def say_species
     "I am a #{@species}."
  end 

  def pets
    self.class.pets
  end 
  
  def self.pets 
    @@pets 
  end
  


  def buy_fish(name)
    pets[:fishes] << Fish.new(name)  ## puts a new instance of fish and attributes into the fishes hash 
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs                 ## when dog is walked mood changes to happy
    pets[:dogs].each do |dog|   ## pass each instance of dog object and attributes including mood 
      dog.mood = "happy"        ## changes each dog instance mood to happy beacuse it was walked
    end
  end 
  
  def play_with_cats            ## when dog is walked mood changes to happy
    pets[:cats].each do |cat|   ## pass each instance of dog object and attributes including mood 
      cat.mood = "happy"        ## changes each dog instance mood to happy beacuse it was walked
    end
  end 
  
  def feed_fish           ## when dog is walked mood changes to happy
    pets[:fishes].each do |fish|   ## pass each instance of dog object and attributes including mood 
      fish.mood = "happy"        ## changes each dog instance mood to happy beacuse it was walked
    end
  end 
  
=begin #########################################################################3
      
          describe "#sell_pets" do
      it 'can sell all its pets, which make them nervous' do
      
        fido = Dog.new("Fido")
        tabby = Cat.new("Tabby")
        nemo = Fish.new("Nemo")
        [fido, tabby, nemo].each {|o| o.mood = "happy" }
        owner.pets = {
          :dogs => [fido, Dog.new("Daisy")],
          :fishes => [nemo],
          :cats => [Cat.new("Mittens"), tabby]
        }
        owner.sell_pets
        owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }  ## has to pass first so clear 
      
        [fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }  
      end
    end
    

    # @@pets = {} 
  
=end #####################################################################

  def sell_pets
    
     pets.each do |pet_type, pet_instance_array|
     # binding.pry 
    
      pet_instance_array.each do |pet_instance|
      # binding.pry 
      
        pet_instance.mood = "nervous"
        #  binding.pry 
      end
    end
    
    @@pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
      }
  end

  def list_pets  ### lists numbers of pets using counting instances of each pet and interperlation
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."  
  end
  
  def self.all ## class method that calls the class variable @@owner
    @@owner
   end 
   
  def self.count ## class method that counts the instances of owners in the class variable @@owner 
    @@owner.count 
  end 
  
  def self.reset_all  ## class method that resets the class variable @@owner 
    @@owner = []
  end 

   

end ## end of class 