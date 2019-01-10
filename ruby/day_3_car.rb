# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.
class Car
  attr_reader :wheels, :make, :year, :lights_on, :signal, :speed, :model

  def initialize (model)
    @wheels = 4
    @make = "Generic"
    @model = model
    @year = nil
    @lights_on = false
    @signal = "Off"
    @speed = 0
    @acceleration_rate = nil
    @braking_rate = nil

  end

  def details
    "The car is a #{@make}, it accelerates at #{@acceleration_rate} km/h and brakes at #{@braking_rate} km/h"
  end

  def accelerate
    @speed = @speed + @acceleration_rate
  end

  def brake
    @speed = @speed - @braking_rate
  end

  def honk
    "BEEP"
  end

  def signal_left
    @signal = "Left"
  end

  def signal_right
    @signal = "Right"
  end

  def signal_off
    @signal = "Off"
  end

  def toggle_lights
    if @lights_on == false
      @lights_on = true
    else
      @lights_on = false
    end
  end
end

class Toyota < Car
  def initialize (model)
    super
    @make = "Toyota"
    @year = 2019
    @acceleration_rate = 7
    @braking_rate = 5
  end
  def honk
    super
    "Whoop"
  end
end

class Tata < Car
  def initialize (model)
    super
    @make = "Tata"
    @year = 2001
    @acceleration_rate = 2
    @braking_rate = 1.25
  end
end

class Tesla < Car
  def initialize (model)
    super
    @make = "Tesla"
    @year = 2019
    @acceleration_rate = 10
    @braking_rate = 7
  end

  def honk
    super
    "Beep-bee-bee-boop-bee-doo-weep"
  end
end

class Garage

  def initialize
    @name = "Enrique Garage"
    @cars = []
  end

  def add_car object
    @cars << object
  end

  def sort_garage
    @cars = @cars.sort_by!{|object| [object.make, object.year]}
  end

  def contents
    @cars
  end
end



#
# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.
#
# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#
# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".
#
# Story: As a programmer, I can make a Toyota car.
# Hint: Test that class Toyota which inherits from class Car can be created.
#
# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
#
# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
#
# Story: As a programmer, I can make a Tesla car.
#
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
#
# Story: As a programmer, I can tell which make year a vehicle is from. make years never change.
# Hint: Make make year part of the initialization.
#
# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
#
# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
#
# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
#
# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story: As a programmer, I can store and retrieve all of my cars from a garage.
# Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
# Story: As a programmer, I can sort the cars in my garage based on make year.
#
# Story: As a programmer, I can sort the cars in my garage based on make.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort the cars in my garage based on make and then year.
# Hint: Find out how the spaceship operator can help you with an array.
