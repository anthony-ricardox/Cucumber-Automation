#language: pt

Funcionalidade: Trablhar com contexto 

Contexto: 
Dado que eu tenha 10 laranjas na bolsa


Cenario: Colocar uma quantidade de  laranja
Quando eu coloco 2 laranja na bolsa
Então eu verifico se o total  de laranjas  na bolsa é 12

Cenario: Retirar uma quantidade de laranja
Quando eu tiro 2 laranjas da bolsa
Então eu verifico com quantas laranjas eu fiquei na bolsa