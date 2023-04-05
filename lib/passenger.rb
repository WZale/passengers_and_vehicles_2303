class Passenger
  attr_reader :name,
              :age,
              :driver

  def initialize(passenger)
    @name = passenger["name"]
    @age = passenger["age"]
    @driver = false
  end

  def adult?
    if @age >= 18
      true
    else
      false
    end
  end

  def drive
    @driver = true
  end

  def driver?
    @driver
  end
end