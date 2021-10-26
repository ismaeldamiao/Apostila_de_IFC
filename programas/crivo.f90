!  Objetivo: Calcular todos os numeros primos ate um limite superior.
!  Metodo: Crivo de Eratostenes.
!  Autor: I.F.F. dos Santos
!  Exemplo de compilacao e execucao no linux:
!     gfortran crivo.f90 -o crivo && ./crivo
PROGRAM crivo
   ! O que segue serve somente para testar a rotina crivo_de_eratostenes().
   ! O verdadeiro algoritmo eh a subrotina em CONTAINS.
   ! Declaracoes
   IMPLICIT none
   INTEGER :: limite_superior
   ! Comandos executaveis
   PRINT *, "Bem vindo ao programa Crivo!"
   PRINT *, "Por favor, digite o maior numero da lista onde serao buscados os &
             &numeros primos:"
   READ *, limite_superior
   ! Chamando a rotina para o Crivo
   CALL crivo_de_eratostenes(limite_superior)
   
CONTAINS
   SUBROUTINE crivo_de_eratostenes(limite_superior)
      IMPLICIT none
      INTEGER, intent(IN) :: limite_superior
      INTEGER :: numero, multiplos
      LOGICAL :: lista(limite_superior)

      ! Os elementos da lista marcados como falsos,
      ! de certeza nao sao primos
      lista = .true.

      PRINT *, "Os numeros primos ate", limite_superior, "sao"

      DO numero = 2, limite_superior
         IF( lista(numero) )THEN
            PRINT *, numero ! Escreve os numeros nao "riscados" da lista
            DO multiplos = numero + numero, limite_superior, numero
               lista(multiplos) = .false. ! "Risca" os multiplos deste da lista
            END DO
         END IF
      END DO
   END SUBROUTINE
END PROGRAM crivo
