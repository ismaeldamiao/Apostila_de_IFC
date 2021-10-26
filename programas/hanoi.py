#!/usr/bin/env python

# Objetivo: Escrever uma lista com os passos para resolver a Torre de Hanoi.
# Metodo: Recursao.
# Argumento do script: A quantidade de discos.
# Autor: I.F.F. dos Santos
# Exemplo de execucao:
#    python hanoi.py 3

def torre_de_hanoi(n_discos, ini, aux, fin):
   if n_discos > 0:
      # Recursao
      torre_de_hanoi(n_discos-1, ini, fin, aux)
      print(str(ini) + "->" + str(fin))
      torre_de_hanoi(n_discos-1, aux, ini, fin)

# O que segue serve somente para testar a funcao torre_de_hanoi()
import sys
torre_de_hanoi(int(sys.argv[1]), 1, 2, 3)
