require "rspec"
require_relative "day_3_car.rb"

describe "Car" do
  it "Check that Vehicle exists" do
    expect {Car.new("Generic Model")}.not_to raise_error
  end

  it "Check that I can create a new Class of car" do
    a_car = Car.new("Generic Model")
    expect(Car).to be_a(Class)
    expect(a_car).to be_instance_of(Car)
  end

  it "Check the number of wheels of a car" do
    a_car = Car.new("Generic Model")
    expect(a_car.wheels).to be 4
  end

  it "Beeps when I honk horn" do
    a_car = Car.new("Generic Model")
    expect(a_car.honk).to eq("BEEP")
  end

it "Check to test creation of Toyota class" do
  a_toyota = Toyota.new("Camry")
  p a_toyota
  expect(Toyota).to be_a(Class)
  expect(Toyota.superclass).to eq(Car)
  expect(a_toyota.make).to eq("Toyota")
end

it "Check Toyota makes whoop sound when honked" do
  a_toyota = Toyota.new("Camry")
  expect(a_toyota.honk).to eq("Whoop")
  a_car = Car.new("Generic Model")
  expect(a_car.honk).to eq("BEEP")
end

it "Check I can create a Tata Car" do
  a_tata = Tata.new("Hexa")
  expect(Tata).to be_a(Class)
  expect(a_tata).to be_a(Tata)
  expect(Tata.superclass).to eq(Car)
  expect(a_tata.make).to eq("Tata")
end

it "Check I can honk horn of Tata and it beeps" do
  a_tata = Tata.new("Hexa")
  expect(a_tata.honk).to eq("BEEP")
end


it "Check I can create a Tesla class" do
  a_tesla = Tesla.new("Model 3")
  expect(Tesla).to be_a(Class)
  expect(a_tesla).to be_a(Tesla)
  expect(Tesla.superclass).to eq(Car)
  expect(a_tesla.make).to eq("Tesla")
  end

  it "Check I can honk horn of Tata and it beeps" do
    a_tesla = Tesla.new("Model 3")
    expect(a_tesla.honk).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

it "Check the years of different car classes" do
  a_tesla = Tesla.new("Model 3")
  a_tata = Tata.new("Hexa")
  a_toyota = Toyota.new("Camry")
  expect(a_tesla.year).to be 2019
  expect(a_tata.year).to be 2001
  expect(a_toyota.year).to be 2019
end

it "Check the lights turn on and off on given vehicle" do
  a_car = Car.new("Generic Model")
  a_toyota = Toyota.new("Camry")
  expect(a_car.lights_on).to eq(false)
  expect(a_toyota.lights_on).to eq(false)
  a_car.toggle_lights
  expect(a_car.lights_on).to eq(true)
  a_car.toggle_lights
  expect(a_car.lights_on).to eq(false)
end

it "Check status of lights" do
  a_car = Car.new("Generic Model")
  a_tesla = Tesla.new("Model 3")
  expect(a_car.lights_on).to eq(false)
  expect(a_tesla.lights_on).to eq(false)
  end


it "To test the signal method on a car classes" do
  a_car = Car.new("Generic Model")
  expect(a_car.signal).to eq("Off")
  a_car.signal_left
  expect(a_car.signal).to eq("Left")
  a_car.signal_right
  expect(a_car.signal).to eq("Right")
  a_car.signal_off
  expect(a_car.signal).to eq("Off")
end

it "Check to determine the speed of the car" do
  a_car = Car.new("Generic Model")
  expect(a_car.speed).to be 0
end

it "Check to accelerate Tesla by 10 km/h" do
  a_tesla = Tesla.new("Model 3")
  expect(a_tesla.speed).to be 0
  a_tesla.accelerate
  expect(a_tesla.speed).to be 10
end

it "Check that the Telsa breaks at a rate of 7km/h" do
  a_tesla = Tesla.new("Model 3")
  a_tesla.accelerate
  expect(a_tesla.speed).to be 10
  a_tesla.brake
  expect(a_tesla.speed).to be 3
end

it "Check to accelerate Tata by 2 km/h" do
  a_tata = Tata.new("Hexa")
  expect(a_tata.speed).to be 0
  a_tata.accelerate
  expect(a_tata.speed).to be 2
  a_tata.accelerate
  a_tata.accelerate
  expect(a_tata.speed).to be 6
end

it "Check that the Tatas breaks at a rate of 1.25km/h" do
  a_tata = Tata.new("Hexa")
  a_tata.accelerate
  a_tata.accelerate
  expect(a_tata.speed).to be 4
  a_tata.brake
  expect(a_tata.speed).to be 2.75
  a_tata.brake
  expect(a_tata.speed).to be 1.5
end

it "Check to accelerate Toyota by 7 km/h" do
  a_toyota = Toyota.new("Camry")
  expect(a_toyota.speed).to be 0
  a_toyota.accelerate
  expect(a_toyota.speed).to be 7
  a_toyota.accelerate
  a_toyota.accelerate
  expect(a_toyota.speed).to be 21
end

it "Check that the Toyota breaks at a rate of 5km/h" do
  a_toyota = Toyota.new("Camry")
  a_toyota.accelerate
  a_toyota.accelerate
  expect(a_toyota.speed).to be 14
  a_toyota.brake
  expect(a_toyota.speed).to be 9
  a_toyota.brake
  expect(a_toyota.speed).to be 4
end

it "To test getting information on the car" do
  a_toyota = Toyota.new("Camry")
  a_tesla = Tesla.new("Model 3")
  a_tata = Tata.new("Hexa")
  toyota_details = a_toyota.details
  expect(toyota_details).to be_a_kind_of(String)
  expect(a_toyota.details).to eq("The car is a Toyota, it accelerates at 7 km/h and brakes at 5 km/h")
  expect(a_tata.details).to eq("The car is a Tata, it accelerates at 2 km/h and brakes at 1.25 km/h")
  expect(a_tesla.details).to eq("The car is a Tesla, it accelerates at 10 km/h and brakes at 7 km/h")
  end

it "Check the Cars are stored in an array, Garage"do
my_cars = [a_toyota = Toyota.new("Camry"), a_tesla = Tesla.new("Model 3"), a_tata = Tata.new("Hexa")]
  expect(my_cars).to be_a_kind_of(Array)
  expect(my_cars[0].model).to eq("Camry")
  expect(my_cars[2].speed).to be 0
  expect(my_cars.length).to be 3
end

it "To make sure we can sort an array of car objects by year" do
  my_cars = [a_toyota = Toyota.new("Camry"), a_tesla = Tesla.new("Model 3"), a_tata = Tata.new("Hexa")]
  my_cars.sort_by!{|object| object.year}
  expect(my_cars[0].year).to be 2001
  expect(my_cars[2].make).to eq("Tesla")
  expect(my_cars[1].model).to eq("Camry")
  end

it "To make sure we can sort array by make" do
  my_cars = [a_toyota = Toyota.new("Camry"), a_tesla = Tesla.new("Model 3"), a_tata = Tata.new("Hexa")]
  my_cars.sort_by!{|object| object.make}
  expect(my_cars[0].make).to eq("Tata")
  expect(my_cars[0].year).to be 2001
end

it "To make sure we can sort array by make and then year" do
  garage = Garage.new
  garage.add_car(Toyota.new("Camry"))
  garage.add_car(Tesla.new("Model 3"))
  garage.add_car(Tata.new("Hexa"))
  garage.sort_garage
  expect(garage.contents[0].make).to eq("Tata")
  expect(garage.contents[0].year).to be 2001
  expect(garage.contents[2].make).to eq("Toyota")
  expect(garage.contents[2].year).to be 2019
end

end
