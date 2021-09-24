# Trabalho de conclusão do curso de Compiladores 2021.1

Alunos: Gabriel de Souza Candido e Luiza Rodrigues de Souza
Christiano Braga  
Instituto de Computação  
Universidade Federal Fluminense

- Data de entrega: 24/09/2021

## Objetivo

Estender a linguagem Fun e seu interpretador com suporte a definição
de uma função com um número indefinido de parâmetros e sua chamada.

## Etapas

1. Modifique a gramática de Fun para dar suporte a declaração de
   funções com vários paraâmetros.  

   
2. Modifique o compilador de Fun para Π IR de forma que declarações e
   expressões apropriadas sejam geradas a partir do código Fun.
   
   
3. Teste sua estensão implementando versões que utilizem recursão de
   cauda (_tail recursion_) das funções ```fat``` e ```fib```. Modifique também o
   exemplo da função ```apply```.
   
##Relatorio    
   Escolhemos como separador de parâmetros o operador ```\```   
   Para essa etapa foram modificados a parte de operadores ```(Keywords)``` no arquivo ```fun2.maude```  para dar espaço ao nosso operador
   ```eq keywords = ('fun '`( '`) '= '`, '~ '+ '- '* '/ '>= '> '<= '< '== 'or 'and 'if 'then 'else '\) . ```
   Para concluir a alteração no ```fun2``` terminamos com as demais alterações para permitir que o compilador aceite os parâmetros em suas devidas colocações.
   
##Resultados de Execução

Fibonacci comum
 ```
Fun > fload("fib.fun")
File fib.fun loaded!
Fun > run("fib(5)")
5

 ```   
 
 
Fibonacci com recursão de calda
 ```
Fun > fload("tail_recursion_fib.fun")
File tail_recursion_fib.fun loaded!
Fun > run("fib(5)")
5

 ```   
Fatorial comum
 ```
Fun > fload("fat.fun")
File fat.fun loaded!
Fun > run("fat(5)")
120

 ```   
Fatorial com recursão de calda
 ```
Fun > fload("tail_recursion_fat.fun")
File tail_recursion_fat.fun loaded!
Fun > run("fat(5)")
120

 ```   
 Apply
  ```
Fun > fload("apply-list.fun")
File apply-list.fun loaded!
Fun > run("apply(fat \ 5)")
120

 ```   
   
   
