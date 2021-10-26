/* Objetivo: Escrever os N primeiros termos da Sequencia de Fibonacci.
   Metodo: Iteracao F_n = F_{n-1} + F_{n-2}.
   Argumento da main: A quantidade de termos que se deve escrever.
   Autor: I.F.F. dos Santos
   Exemplo de compilacao e execucao:
      javac fibonacci.java && java fibonacci 10
*/
class fibonacci{
   public static void sequencia_de_fibonacci(int quantidade){
      int numero, numero_menos1, numero_menos2;
      numero_menos1 = 1;
      numero_menos2 = 1;
      System.out.println("Sequencia de Fibonacci:\n1\n1");
      for(int i = 3; i <= quantidade; ++i){
         /* Encontre o proximo numero da sequencia */
         numero = numero_menos1 + numero_menos2;
         System.out.println(numero);
         /* Iteracao */
         numero_menos2 = numero_menos1;
         numero_menos1 = numero;
      }
   }
   /* O que segue serve somente para testar
      a rotina sequencia_de_fibonacci() */
   public static void main(String[] args){
      /* Chama a sequencia_de_fibonacci()  usando args[0] como parametro. */
      fibonacci.sequencia_de_fibonacci(Integer.parseInt(args[0]));
      System.exit(0);
   }
}
