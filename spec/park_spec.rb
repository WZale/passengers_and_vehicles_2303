require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
  it 'can initialize' do
    park = Park.new("Cape Cod National Seashore", 40)
    expect(park).to be_a(Park)

    expect(park.name).to eq("Cape Cod National Seashore")
    expect(park.admission_price).to eq(40)
  end

  it 'can have vehicles enter' do
    park = Park.new("Cape Cod National Seashore", 40)
    expect(park.vehicles).to eq([])

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("1962", "Ferarri", "250 GTO")
    vehicle3 = Vehicle.new("1990", "Lamborghini", "Diablo")

    park.add_vehicle(vehicle1)
    park.add_vehicle(vehicle2)
    park.add_vehicle(vehicle3)

    expect(park.vehicles).to eq([vehicle1, vehicle2, vehicle3])
  end

  it 'can list passengers in entering vehicles' do
    park = Park.new("Cape Cod National Seashore", 40)

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle1.add_passenger(charlie)
    vehicle1.add_passenger(jude)
    vehicle1.add_passenger(taylor)

    park.add_vehicle(vehicle1)
    expect(park.vehicles).to eq([vehicle1])

    expect(vehicle1.passengers).to eq([charlie, jude, taylor])
  end
end