
function createCar(newMake, newYear, carColor){
  return {
  speed: 30,
  speedLimit: 85,
  make: newMake,
  year: newYear,
  color: carColor,
  getInfo: function() { return "The Make of the car is " + this.make
  + " It is made in " + this.year
  + " and it is " + this.color},
  getSpeed: function(){return this.speed},
  accelerate: function(){ this.speed += 10},
  brake: function() {this.speed -= 7},
}}



var car1 = createCar("Honda", 2018, "Red")
var car2 = createCar("BMW", 2013, "Black")


function speedUp(carObject, limit){
  while(carObject.getSpeed() < limit){
    carObject.accelerate()

  }
}

function limitSpeed(car){
  while ()
}
