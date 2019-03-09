/*
Solução desenvolvida por NIO.PY

Entrega: 9/3/19 13:18 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nio.py#9066
*/

var readline = require('readline-sync');

var s = readline.question("Numero: ");
var nums = [];

while (s != 1) {
  for (i = 2; i < 100000000000001; i++) {
    if (s % i == 0) {
      nums.push(i);
      s = s / i;
      break;
    }
  }
}

var finais = [];
var copy = new Array(nums.length);
for (var i = 0; i < nums.length; i++) {
  copy[i] = nums[i];
}

for (var num of copy){
  var iguais = 0
  
  var copy2 = new Array(nums.length);
  for (var i = 0; i < nums.length; i++) {
    copy2[i] = nums[i];
  } 
  
  for (var num2 of copy2) {
    if (num == num2) {
      iguais += 1
      nums.splice( nums.indexOf(num2), 1 );
    }
  }
  
  if (iguais == 1) {
    finais.push(num.toString())
  }
  else if (iguais != 0) {
    finais.push(num.toString() + "^" + iguais.toString()) 
  }
}

console.log(finais.join(' x '));