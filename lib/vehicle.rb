class Vehicle
  attr_reader :year,
              :make,
              :model,
              :speeding,
              :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speed
    @speeding = true
  end

  def speeding?
    @speeding
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.select { |passenger| passenger.age >= 18 }.length
  end
end