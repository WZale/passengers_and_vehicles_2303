require './lib/passenger'

RSpec.describe Passenger do
  it 'can initialize' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie).to be_a(Passenger)
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'has an adult? method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'has a driver? method' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to eq(false)
    charlie.drive
    expect(charlie.driver?).to eq(true)
  end
end