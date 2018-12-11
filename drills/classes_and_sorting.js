class Car {
  constructor(newYear, newMake, newModel, newWrap){
    this.year = newYear
    this.make = newMake
    this.model = newModel
    this.wrap = newWrap
  }

  describeCar(){
    return `My car is a ${this.year} ${this.make} ${this.model} with a ${this.wrap} wrap.`
  }
}

class Tesla extends Car{
  constructor(newYear, newMake, newModel, newWrap){
    super(newYear, newMake, newModel, newWrap)

  }
}

let car = new Car(1995, 'Toyota', 'Land Cruiser', 'Jurassic Park')
let car2 = new Car(2017, 'Honda', 'Civic', 'SAO')
let car3 = new Car(2009, 'Honda', 'Civic', 'Sonic')
let myTesla = new Tesla(2018, 'Tesla', 'Model S', 'no wrap')
// console.log(myTesla);

let cars = [car, car2, car3, myTesla]

// console.log('ALL CARS ==========: \n', cars)

let modelSorted = cars.sort(function(el1, el2){
  if (el1.model < el2.model){
    return -1
  } else if (el1.model > el2.model){
    return 1
  }
  return 0
})

var sortedArray = cars.sort((a, b) =>{
  return a.model > b.model
})

// console.log('BY MODEL ==========: \n', sortedArray);

let yearSorted = cars.sort(function(el1, el2){
  return el1.year - el2.year
})

// console.log('BY YEAR ===========: \n', yearSorted);

let ultraSort = cars.sort(function(el1, el2){
  let byModel
  // Define sort for model
  if (el1.model < el2.model){
    byModel = -1
  } else if (el1.model > el2.model){
    byModel = 1
  } else {
    byModel = 0
  }

  // Define sort for year
  let byYear = el1.year - el2.year
  // console.log('el1: ', el1)
  // console.log('el2: ', el2, 'el1 && el2',  byYear && byModel)

  // Sort by both
  return byYear && byModel
})

console.log('ULTRA!!! ==========: \n', ultraSort);
