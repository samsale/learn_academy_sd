function createGame(){
return{
randomnumber: Math.floor((Math.random() * 100) + 1),
tries: 0,
guess: null,
testGuess : function() {
  console.log(this.randomnumber);
  this.guess = document.getElementById('guess').value;
  {this.tries ++}
  console.log(this.tries);
  if(this.guess < this.randomnumber){
    return document.getElementById("guessed").innerHTML= "Guess Higher"
  }else if(this.guess > this.randomnumber){
    return document.getElementById("guessed").innerHTML= "Guess Lower";
  }else if(this.guess == this.randomnumber){
    toggleDiv('guessArea')
    toggleDiv('playagain')
    return document.getElementById("guessed").innerHTML= "Matched! You had " + this.tries+ " tries";}
  },
    }
  }

  function toggleDiv(div){
      var x = document.getElementById(div);
      if (x.style.display === "none") {
          x.style.display = "block";
      } else {
          x.style.display = "none";
      }
  }



var game = createGame()
