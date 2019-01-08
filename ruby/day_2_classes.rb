# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
end

my_vehicle = Vehicle.new
p my_vehicle
#
# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#
# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

# class Car
#   attr_reader :wheels
#   def initialize
#     @wheels = 4
#   end
# end
# #
# # Story: As a programmer, I can make a Tesla car.
# # Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
#
# class Tesla < Car
#   attr_reader :model
#   def initialize
#     super
#     @model = "Tesla"
#   end
# end
#
#
# my_car = Car.new
# p my_car.wheels
# my_tesla = Tesla.new
# p my_tesla.wheels
# p my_tesla.model



#
# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can make a Toyota car.
#
# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.
#
# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position

# Story: As a programmer, I can signal left and right. Turn signals starts off.
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
# Story: As a programmer, I can call upon a car to tell me all it's information.


class Car
  def initialize (year)
    @wheels = 4
    @model = "Gerneric"
    @year = year
    @light_on = false
    @signal = "Signal Off"
    @current_speed = 0
    @acceleration = 3
    @braking = 3

  end
  attr_reader :model, :year, :light_on, :signal, :speed, :current_speed, :acceleration
  attr_accessor :wheels

  def supply_car_info
     "The car is a #{@model} built in #{@year}, it acclerates at #{@acceleration}km/h and brakes at #{@braking}km/h"
  end

  def toggle_lights
    if @light_on == true
      @light_on = false
    else
      @light_on = true
    end
   end

  def signal_left
    @signal = "Signalling Left"
  end

  def signal_right
    @signal = "Signalling Right"
  end

  def signal_off
    @signal = "Signal Off"
  end

  def accelerate_car
    @current_speed = @current_speed + @acceleration
  end

  def decelerate_car
    @current_speed = @current_speed - @braking
  end

end

class Tesla < Car
    def initialize (year)
    super
    @model = "Tesla"
    @acceleration = 10
    @braking = 7
  end
end

class Tata < Car
    def initialize (year)
    super
    @model = "Tata"
    @acceleration = 2
    @braking = 1.25
  end
end

class Toyota < Car
    def initialize (year)
    super
    @model = "Toyota"
    @acceleration = 7
    @braking = 5
  end
end


# As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
my_cars = [Tesla.new(2018), Tesla.new(2016), Tata.new(1999), Tata.new(2002), Toyota.new(2019), Toyota.new(2012)]

# As a programmer, I can sort my collection of cars based on model year.
# p my_cars.sort_by {|object| object.year}

# As a programmer, I can sort my collection of cars based on model.
# p my_cars.sort_by {|object| object.model}

# As a programmer, I can sort my collection of cars based on model and then year.
p my_cars.sort_by { |object| [ object.model, object.year ] }
