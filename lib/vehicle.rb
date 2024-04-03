class Vehicle
  attr_reader :year,
              :make,
              :model
  attr_accessor :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @passengers = []
  end

  def speeding?
    if @flag == 1
      return true
    else
      return false
    end
  end

  def speed
    @flag = 1
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.find_all |passenger|
    adults = passenger["age"] >= 18
    return adults.count
  end
end