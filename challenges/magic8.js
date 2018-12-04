function hideDiv(div){
    var x = document.getElementById(div);
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

function supplyAnswer(){
  var input = document.getElementById('question').value;
  var answers = ['Yup', 'Fuhgeddaboudit', 'Maybe']
  var answer = answers[Math.floor(Math.random() * answers.length)];
    // hideDiv('sam')

    document.getElementById("answer").innerHTML= "Question - " + input;
    document.getElementById("demo").innerHTML= "Answer - " + answer;
}

// function hideDiv(div){
//     var x = document.getElementById(div);
//     if (x.style.display === "none") {
//         x.style.display = "block";
//     } else {
//         x.style.display = "none";
//     }
// }
