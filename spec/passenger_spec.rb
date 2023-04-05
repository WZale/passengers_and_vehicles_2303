require './lib/passenger'

RSpec.describe Passenger do
  it 'can initialize' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie).to be_a(Passenger)
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end
end