/* Objetivo: Calcular o MDC entre dois naturais.
   Metodo: Algoritmo de Euclides.
   Argumentos da main: Os dois numeros que se deseja encontar o MDC.
   Autor: I.F.F. dos Santos
   Exemplo de compilacao e execucao no linux:
      gcc mdc.c -o mdc && ./mdc 3 71
*/
int MDC(int a, int b){
   /* Declaracoes */
   int resto;
   /* Comandos executaveis */
   if(a < b) return MDC(b, a); // Para garantir que o 2o argumento eh o menor
   if(b < 0) return -1; // -1 indica erro ao computar o MDC

   while(b != 0){
      resto = a % b;
      /* Iteracao */
      a = b;
      b = resto;
   }
   return a;
}

/* O Algoritmo de Euclides ja termonou,
   o que segue serve somente para testar a funcao MDC() */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
   /* Comandos executaveis */
   printf("MDC(%s, %s) = %d\n", argv[1], argv[2],
   MDC(atoi(argv[1]), atoi(argv[2])));
   return 0;
}
