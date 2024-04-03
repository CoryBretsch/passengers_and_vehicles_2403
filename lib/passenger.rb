class Passenger
  attr_reader :name,
              :age

  def initialize(passenger)
    @name = passenger["name"]
    @age = passenger["age"]
  end

end