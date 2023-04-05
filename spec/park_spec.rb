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
end