class Passenger
  attr_reader :name,
              :age
              
  def initialize(passenger)
    @name = passenger["name"]
    @age = passenger["age"]
  end

  def adult?
    @age >= 18
  end

  def driver?
    if @flag == 1
      return true
    else
      return false
    end
  end

  def drive
    if adult? == true
      @flag = 1
      return true
    else
      return false
    end
  end
  
end