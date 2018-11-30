// Goal
//
// Create a function that plays the following game: The computer picks a secret random integer between 1 and 100 (both inclusive), and repeatedly asks the user for guesses.
// If the user's guess is too high or too low, the computer notifies them of that
// Otherwise, if the user guesses the secret number correctly, the computer displays a winning message and the game is over.

function createRandomNumber(){
  var ranNumber = Math.floor((Math.random() * 100) + 1);
  return ranNumber
}



function userGuesses(randomNumber, guess){
  var rN = createRandomNumber()
  if(randomNumber === guess){
    console.log('That is the correct answer');
  }else if(guess !== randomNumber){
    console.log('Keep Guessing');

  }
}


userGuesses(7,9)
