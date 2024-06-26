require './lib/passenger'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Passenger do
    it "can initialize" do
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18}) 

      expect(passenger_1).to be_an_instance_of(Passenger)
    end

    it "can return a name" do 
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18}) 
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12}) 

      expect(passenger_1.name).to eq("Charlie")
    end

    it "can return an age" do
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18})
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(passenger_1.age).to eq(18)
      expect(passenger_2.age).to eq(12)
    end

    it "can determine an adult" do
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18}) 
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(passenger_1.adult?).to be(true)
      expect(passenger_2.adult?).to be(false)
    end

    it "can determine a driver" do
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18}) 
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(passenger_1.driver?).to be(false)
      expect(passenger_2.driver?).to be(false)
    end

    it "can make a driver " do
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18})
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})

      passenger_1.drive
      passenger_2.drive

      expect(passenger_1.driver?).to be(true)
      expect(passenger_2.driver?).to be(false)
    end
end