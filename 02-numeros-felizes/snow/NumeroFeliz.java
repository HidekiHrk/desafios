/*
Solução desenvolvida por SNOW

Entrega: 17/12/18 12:19 BRT

Pontos (base): 20
Pontos adicionais: 0
Pontos (total): 20

Forma(s) de contato:
 - Discord: snow#4362
 - GitHub: github.com/hmm232
*/

public class NumeroFeliz {
	public static int somaQuadrado(int n) {
        int x = 0;
        while (n > 0){
            x += ((int) Math.pow(n%10, 2));
            n /= 10;
        }
        return x;
    }
	public static boolean verificarFeliz(int n){
        int n1, n2;
        n1 = n2 = n;
        do{
            n1 = somaQuadrado(n1);
            n2 = somaQuadrado(somaQuadrado(n2));
        } while (n1 != n2);
        if (n1 == 1){
            return true;
        } else {
            return false;
        }
    }
	public static void main(String[] args) {	
		int f = 0;
		int contador = 0;
		while (true) {
			f ++;
			if (verificarFeliz(f) == true) {
				contador ++;
				System.out.println(contador+"."+" número feliz = "+f);
			} else if (contador == 20) {
				break;
			}
		}
		System.out.println("Fim!");
	}

}
