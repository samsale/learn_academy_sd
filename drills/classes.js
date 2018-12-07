// Story: As a programmer, I can make a car.
// Hint: Create a class called Car, and create a variable called myCar which contains an object of class Car.

// class Car {
//   constructor(){
//
//   }
// }
//
// let myCar = new Car()
// console.log(myCar);

// Story: As a programmer, I can tell how many wheels a car has; default is four.
//
// class Car {
//   constructor(){
//     this.numbersOfWheels = 4
//
//   }
// }
//
// let myCar = new Car()
// console.log(myCar);


// Story: As a programmer, I can make a Tesla car.
// Hint: Create an variable called myTesla which is of class Tesla which inherits from class Car.
//
// class Car {
//   constructor(){
//     this.numbersOfWheels = 4
//
//   }
// }
//
// let myCar = new Car()
// console.log(myCar);
//
//
// class Tesla extends Car {
//
// }
// let myTesla = new Tesla()
//
// console.log(myTesla);

// Story: As a programmer, I can make a Tata car.

// class Car{
//   constructor(){
//     this.numberOfWheels = 4
//   }
// }
//
// class Tata extends Car{
//
// }
//
// let myTata = new Tata()
// console.log(myTata);

// Story: As a programmer, I can make a Toyota car.

// class Car{
//   constructor(){
//     this.numberOfWheels = 4
//   }
// }
//
// class Toyota extends Car{
//
// }
//
// let myToyota = new Toyota()
//
// console.log(myToyota);

// Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
// Hint: Make model year part of the initialization.

// class Car{
//   constructor(year){
//     this.numberOfWheels = 4
//     this.modelYear = year
//   }
// }
//
// let myCar = new Car(1994)
//
// console.log(myCar);

// Story: As a programmer, I can turn on and off the lights on a given Car.
// Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

// Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
// Story: As a programmer, I can signal left and right. Turn signals starts off.

// Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.

// Story: As a programmer, I can call upon a car to tell me all it's information.
// Hint: Implement carInfo method on one or more classes. You can call a super class's carInfo with super.

class Car{
  constructor(model, year){
    this.make = model
    this.numberOfWheels = 4
    this.modelYear = year
    this.lightsOn = false
    this.signal = 'off'
    this.speed = 0
    this.acceleration = 1
    this.braking = 1
  }
toggleLights(){
  if(this.lightsOn){
    return this.lightsOn = false
  }return this.lightsOn = true
}
signalPosition(position){
  switch (position){
    case 'left':
      this.signal = 'left'
      break
    case 'right':
      this.signal = 'right'
      break
    default:
      this.signal = 'off'
  }
}
currentSpeed(){
  return this.speed
}carInfo(){
  return "The make of the car is " + this.make + '\n' +
          "My car has a accelration of " + this.acceleration + " Km/h" + '\n' +
          "The car brakes at a rate of " + this.braking + " Km/h" + '\n' +
          "The year of the model is " + this.modelYear + '\n'

}test(){
  return `My car is ${this.make}`
}
}




// Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
// Story: As a programmer, I can slow my Teslas down by 7 per braking.

class Tesla extends Car{
  constructor(model, year){
    super(model, year)
    this.acceleration = 10
    this.braking = 7
  }
}

// Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
// Story: As a programmer, I can slow my Tatas down by 1.25 per braking.

class Tata extends Car{
  constructor(model, year){
    super(model, year)
    this.acceleration = 2
    this.braking = 1.25
  }
}

// Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
// Story: As a programmer, I can slow my Toyotas down by 5 per braking.

class Toyota extends Car{
  constructor(model, year){
    super(model, year)
    this.acceleration = 7
    this.braking = 5
  }
}

let myCar = new Car("Standard", 1994)
let myTesla = new Tesla("Tesla", 2018)
let myTata = new Tata("Tata", 1998)
let myToyota = new Toyota("Toyota", 2004)

console.log(myTesla.test());
// Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
// Hint: Create two of each vehicles, all from different model years, and put them into an Array.

var cars = [new Tesla("Tesla", 2018),
            new Tesla("Tesla", 2015),
            new Toyota("Toyota", 2009),
            new Tata("Tata", 1998),
            new Tata("Tata", 1991),
            new Toyota("Toyota", 2014)]


// Story: As a programmer, I can sort my collection of cars based on model year.
// var sortedArrayByYear = cars.sort(function(a, b){
//     return a.modelYear - b.modelYear
//       })

// Story: As a programmer, I can sort my collection of cars based on model.
// Hint: Sort based on class name.

// var sortedArrayByModel = cars.sort(function(a, b){
//     return a.make > b.make
//       })

// Story: As a programmer, I can sort my collection of cars based on model and then year.




function orderByProperty(prop) {
  var args = Array.prototype.slice.call(arguments, 1); // modelYear
  return function (a, b) {
    var equality = a[prop] - b[prop];
    if (equality === 0 && arguments.length > 1) {
      return orderByProperty.apply(null, args)(a, b);
    }
    return equality;
  };
}

var sortedData = cars.sort(orderByProperty('modelYear', 'make'));
function compare(a, b) {
  // console.log(a.modelYear + " These are A" + '\n' + a.modelYear + " These are B" );
  if(a.modelYear === b.modelYear){
    return a.make > b.make
  } else {
    return a.modelYear > b.modelYear
  }
}

function sortByModelYearAndMake(cars) {
  let result = cars.sort(function(a,b){
    compare(a,b)
  })

  return result
}
console.log(cars);
console.log(orderByProperty(cars))
