/*
Solução desenvolvida por HIDEKI

Entrega: 21/12/18 18:17 BRT

Pontos (base): 5
Pontos adicionais: 0
Pontos (total): 5

Forma(s) de contato:
 - Discord: overmanniac#0358
 - GitHub: https://github.com/HidekiHrk
 - Facebook: https://www.facebook.com/profile.php?id=100015139758315
*/

using System;
using System.Collections.Generic;

namespace Happy_Numbers
{
    class Program
    {
        static bool isHappy(int num)
        {
            //Console.WriteLine("Processing number " + num.ToString());
            if (num == 1)
                return true;
            string newNum = Convert.ToString(num);
            bool lenStatic = true;
            do
            {
                if (newNum.Length >= 2)
                    lenStatic = false;
                int finalInt = 0;
                foreach (char x in newNum)
                {
                    finalInt += (int) Math.Pow(Convert.ToDouble(x.ToString()), 2);
                }
                newNum = Convert.ToString(finalInt);
                //Console.WriteLine(newNum);
            }
            while (newNum.Length >= 2 || lenStatic);
            if (newNum == "1")
                return true;
            return false;
        }
        static int[] listHappyNumbers(int quantity)
        {
            int currentNumber = 1;
            List<int> happyList = new List<int>();
            while (happyList.Count < quantity)
            {
                //Console.WriteLine(currentNumber);
                if (isHappy(currentNumber))
                    happyList.Add(currentNumber);
                currentNumber++;
            }
            return happyList.ToArray();
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Happy Numbers challenge for CodeHub!!");
            // Mude o valor do quantity para a quantidade de números felizes desejada
            int quantity = 20;
            List<string> happyNumbersStr = new List<string>();
            foreach (int x in listHappyNumbers(quantity))
            {
                happyNumbersStr.Add(Convert.ToString(x));
            }
            string happyStr = string.Join(", ", happyNumbersStr.ToArray());
            Console.WriteLine("The " + quantity + " first happy numbers are: " + happyStr);
            Console.Write("Press start to exit "); Console.ReadLine();
        }
    }
}