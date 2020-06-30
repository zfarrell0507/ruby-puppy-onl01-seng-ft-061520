class Dog
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.clear
    @@all = []
  end 
  
  def self.print_all 
  end
end


natalie = Dog.new("Natalie")
Dog.all