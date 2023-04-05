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
end