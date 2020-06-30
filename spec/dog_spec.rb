require "spec_helper"

describe "Dog" do

  describe ".new" do
    it "initializes with one argument - a name" do
      expect{Dog.new("Snoopy")}.to_not raise_error
    end
  end

  let!(:pluto) { Dog.new("Pluto") }
  let!(:fido) { Dog.new("Fido") }
  let!(:maddy) { Dog.new("Maddy") }

  after(:each) do
    Dog.class_variable_set(:@@all, [])
  end

  describe "class variables" do
    describe "@@all" do
      it "has a class variable, @@all, the points to an array" do
        expect(Dog.class_variable_get(:@@all)).to be_a(Array)
      end
    end
  end

  describe "class methods" do
    describe ".all" do
      it "is a class method returns all dog instances" do
        expect(Dog.all).to match([pluto,fido,maddy])
      end
    end
  end

  describe "#name" do
    it "has a name" do
      expect(pluto.name).to eq("Pluto")
    end
  end
end