/*
Solução desenvolvida por NIO.PY

Entrega: 9/3/19 13:18 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nio.py#9066
*/

using System;
using System.Collections.Generic;  

class MainClass {
  public static void Main (string[] args) {
    Console.WriteLine("Numero: ");
  string input = Console.ReadLine();
  long s;
  long.TryParse(input, out s);
  
  List<int> nums = new List<int>();
  
  while (s != 1) {
    for (int i = 2; i < 100000000001; i++) {
      if (s % i == 0) {
        nums.Add(i);
        s = s / i;
        break;
      }
    }
    
  }
  
  List<string> finais = new List<string>();
  
  List<int> copynums = new List<int>(nums);
  
  foreach (int num in copynums) {
    int iguais = 0;
    
    List<int> copynums2 = new List<int>(nums);
    
    foreach (int num2 in copynums2) {
      if (num == num2) {
        iguais += 1;
        nums.Remove(num2);
      }
    }
    
    if (iguais == 1) {
      finais.Add(num.ToString());
    }
    else if (iguais != 0) {
      finais.Add(num.ToString() + "^" + iguais.ToString());
    }
  }
  
  Console.WriteLine(String.Join(" x ", finais.ToArray()));
  }
}