<!-- omit in toc -->
# Ruby on Rails (WIP)

- [Pré-requisitos](#pr%c3%a9-requisitos)
- [Introdução](#introdu%c3%a7%c3%a3o)
  - [Materiais complementares](#materiais-complementares)
- [A Linguagem](#a-linguagem)
  - [Características](#caracter%c3%adsticas)
  - [Paradigma Procedural no Ruby](#paradigma-procedural-no-ruby)
    - [Atribuição, cálculos simples e exibição no terminal](#atribui%c3%a7%c3%a3o-c%c3%a1lculos-simples-e-exibi%c3%a7%c3%a3o-no-terminal)
    - [Uso de operadores lógicos e condicionais](#uso-de-operadores-l%c3%b3gicos-e-condicionais)
    - [Uso de _loops_](#uso-de-loops)
    - [Definição e uso de métodos](#defini%c3%a7%c3%a3o-e-uso-de-m%c3%a9todos)
  - [Orientação a Objetos no Ruby](#orienta%c3%a7%c3%a3o-a-objetos-no-ruby)
  - [Tópicos Avançados](#t%c3%b3picos-avan%c3%a7ados)
- [Como Funciona uma Aplicação Web](#como-funciona-uma-aplica%c3%a7%c3%a3o-web)
- [_Overview_ do _Framework_](#overview-do-framework)
- [Tópicos Específicos](#t%c3%b3picos-espec%c3%adficos)

## Pré-requisitos

É esperado os seguintes conhecimentos:

- Nivél Básico em:

  - Alguma linguagem de programação;

  - Paradigma Orientado a Objetos.

## Introdução

É um _framework_ para desenvolvimento de aplicações web com as seguintes características:

- Monolito altamente integrado, auxiliando no desenvolvimento de soluções rápidas e com código enxuto;

- Baseado em Convenção antes de Configuração, adotando diversas práticas padronizadas, mas ainda permitindo configurações específicas;

- Escrito em Ruby, uma linguagem que possui características que facilitam alcançar esse objetivo;

- Baterias incluídas: os principais recursos para a criação de soluções web estão inclusas no _framework_.

### Materiais complementares

- [A Filosofia do Framework](https://rubyonrails.org/doctrine/)

## A Linguagem

### Características

- linguagem interpretada
  - O código fonte é lido e convertido para linguagem de máquina durante a execução do programa.
- Tipagem dinâmica
  - Os tipos são definidos em tempo de execução. Ou seja, a linguagem não exige a declaração do tipo de dados utilizado. O tipo de cada variável é determinado enquanto a aplicação roda.
  - A linguagem é menos verbosa e mais flexível, ao custo de uma análise estática de tipos mais eficiente.  
- Programação Reflexiva
  - Permite que desenvolvedores criem código que manipula código. É possível invocar ou adicionar métodos a uma classe ou objeto de maneira dinâmica.
- Orientação a Objetos
  - O uso de classes, herança, polimorfismo e encapsulamento é constante na linguagem. 'Tudo é um objeto'.

### Paradigma Procedural no Ruby

#### Atribuição, cálculos simples e exibição no terminal

```ruby
a = 5
b = 10
result = a + b
puts result # parênteses são opcionais em chamadas de método
```

#### Uso de operadores lógicos e condicionais

```ruby
a = 50
b = 20
both_positive = a > 0 && b > 0

if both_positive
  puts "Ambos os números são positivos!"
elsif a == 0 || b == 0
  puts "Um deles é zero!"
else
  puts "Pelo menos um deles é negativo."
end
```

Quando há apenas uma linha no bloco da condição,
muitas vezes é utilizado o "one line if":

```ruby
puts "Eles são iguais!" if a == b
```

Quando a condição a ser testada é uma negação ("se X não for verdade"),
o idiomático é fazer uso do "unless".

```ruby
unless a != 42  # o mesmo que `if !(a != 42)`
  puts "O valor armazenado em 'a' é 42"
end
```

#### Uso de _loops_

_While_:

```ruby
puts "Contando até 5!"

i = 1
while i <= 5
  puts i
  i += 1
end
```

_For_:

```ruby
fruits = ["morango", "uva", "manga", "banana"] # lista de Strings

puts "Eu gosto dessas frutas:"

for fruit in fruits
  puts fruit
end
```

__Observação:__ O `for` não costuma ser usado pela comunidade, pois ele permite que variáveis criadas dentro do bloco de iteração sejam usadas posteriormente, sendo uma possível fonte de efeitos colaterais.

Por exemplo, poderíamos fazer uso da variável `fruit`, que vai guardar o último valor da lista de frutas (no caso, `"banana"`), após o `for`:

```ruby
puts fruit  # Exibiria "banana" no terminal, em vez de dar erro.
```

Com a explicação de outros conceitos da linguagem, introduziremos o
método `.each`, que não possui esse efeito colateral e é amplamente
utilizado em projetos Ruby:

```ruby
# Uso convencional
fruits.each do |fruit|
  puts fruit
end

# Alternativamente, em uma linha
fruits.each { |fruit| puts fruit }
```

Mais adiante, os recursos e conceitos utilizados no bloco de código acima, necessários para compreender o método `.each`, serão abordados.

#### Definição e uso de métodos

TODO

### Orientação a Objetos no Ruby

TODO

### Tópicos Avançados

TODO

## Como Funciona uma Aplicação Web

TODO

## _Overview_ do _Framework_

TODO

## Tópicos Específicos

TODO
