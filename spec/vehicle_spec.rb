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
end