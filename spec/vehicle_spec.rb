require './lib/vehicle'
require './lib/passenger'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Vehicle do
    it "can initialize" do
      vehicle = Vehicle.new("2001", "Honda", "Civic") 

      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it "can read year, make, model" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

    it "can determine if vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be(false)
    end

    it "can make a vehicle speed and determine if vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      vehicle.speed
    
      expect(vehicle.speeding?).to be(true)
    end
    
    it "can have an array of passengers" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])

      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18})
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})
      passenger_3 = Passenger.new({"name" => "Jude", "age" => 20})
      vehicle.add_passenger(passenger_1)
      vehicle.add_passenger(passenger_2)
      vehicle.add_passenger(passenger_3)

      expect(vehicle.passengers).to eq([passenger_1, passenger_2, passenger_3])
    end
    
    it "can count passengers in vehicle over age 18" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      passenger_1 = Passenger.new({"name" => "Charlie", "age" => 18})
      passenger_2 = Passenger.new({"name" => "Taylor", "age" => 12})
      passenger_3 = Passenger.new({"name" => "Jude", "age" => 20})
      vehicle.add_passenger(passenger_1)
      vehicle.add_passenger(passenger_2)
      vehicle.add_passenger(passenger_3)

      expect(vehicle.num_adults).to be(2)
    end
end