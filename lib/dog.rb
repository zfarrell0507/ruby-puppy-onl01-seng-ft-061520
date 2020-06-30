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

    describe ".clear_all" do
      it "is a class method that empties the @@all array of all existing dogs" do
        Dog.clear_all
        expect(Dog.class_variable_get(:@@all)).to match([]  )
      end
    end
  
    describe ".print_all" do
      it "is a class method that puts out the name of each dog to the terminal" do
        expect{Dog.print_all}.to output("Pluto\nFido\nMaddy\n").to_stdout
      end
    end
  end
  