require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  it 'can initialize' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle).to be_a(Vehicle)

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'can speed' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    vehicle.speed
    expect(vehicle.speeding?).to be(true)
  end

  it 'can have passengers' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle.passengers).to eq([])

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end

  it 'has a num_adults method' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.num_adults).to eq(2)
  end
end