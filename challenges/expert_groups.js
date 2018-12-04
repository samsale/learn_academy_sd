var x = function(a) {return a * 2}

var x = a => a * 2

// console.log (x(2))

var anArray = [1, 'abc', 3, 'sss']

// // anArray.forEach(function(value){console.log(value)})
//
// anArray.forEach((value) => {console.log(value)})
//
//
// var materials = ['Hydrogen','Helium','Lithium','Beryllium']
//
// var materialsLength1 = materials.map(function(material) { return material.length;});
//
// console.log(materialsLength1);
//
// function Counter() {
//   this.num = 0;
//   this.timer = setInterval(function add() {
//     this.num++;
//     console.log(this.num);
//   }, 1000);
// }
//
//
//
// function Counter() {
//   this.num = 0;
//   this.timer = setInterval(() => {
//     this.num++;
//     console.log(this.num);
//   }, 1000);
// }
//
// var b = new Counter();
//
// clearInterval(b.timer)


var dogs = [{name:'Sam', animal:'dog'},
            {name:'Damon', animal:'dog'}]

console.log(...dogs);
