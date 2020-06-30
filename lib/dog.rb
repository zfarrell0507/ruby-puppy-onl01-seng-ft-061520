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
end

natalie = Dog.new("Natalie")
natalie.all