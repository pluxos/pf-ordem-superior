

         

{-
Sabendo que:
- no mercado de ações brasileiro, ações são negociadas em lotes de 100 unidades;
- cada ação é identificada por um nome único, o "ticker", por exemplo VALE3 ou BOVA11;
- quando se compra um lote de ações, ele vai para a "carteira" do comprador;
- os proprietários das ações usam o custo médio das ações para calcular lucros e prejuízos.

Implemente as seguintes funções:
* compre
  - Entrada
     + uma tupla com o ticker (String) e o preço da ação (por unidade)
     + a quantidade de ações a comprar (múltiplo do tamanho de um lote)
     + a carteira a atual, na forma de uma lista de tuplas com ticker e custo médio das ações.
  - Retorna
     + a nova carteira, corrigida pela adição das ações compradas e com preços médios atualizados.

* venda
  - Entrada
     + uma tupla com o ticker (String) e o preço da ação (por unidade)
     + a quantidade de ações a vender (múltiplo do tamanho de um lote)
     + a carteira a atual, na forma de uma lista de tuplas com ticker e custo médio das ações.
  - Retorna
     + a nova carteira, corrigida pela remoção das ações vendidas. Se a venda não for possível,
     a carteira permanece intacta.


-}

compre :: (String, Float) -> Int -> [(String, Float, Int)] -> [(String, Float, Int)]
compre (t,p) q [] = [(t, p, q)] 
compre (t,p) q ((tt,pt,qt):xs)
   | t /= tt = x: compre c q xs
   | otherwise = (tt,(pt* fromIntegral qt + p* fromIntegral q)/fromIntegral (qt+q), qt+q):xs
   where x = (tt,pt,qt)
         c = (t,p)

venda :: (String, Float) -> Int -> [(String, Float, Int)] -> [(String, Float, Int)]
venda _ _ [] = [] 
venda v@(t,_) q (x@(tt,pt,qt):xs)
   | t /= tt = x : venda v q xs
   | qt - q == 0 = xs
   | otherwise = (tt, pt, qt-q):xs










{-
Mastermind 1.

Dado uma lista com 4 de 8 possíveis cores, determinar se a lista é válida.

Entrada:
    - l - Lista de inteiro, onde cada inteiro representa uma cor.

Resultado:
    - True se não há repetições, tem tamanho 4, e os inteiros estão entre 1 e 8. 
    - False se há repetições ou tamanho diferente de 4

>>>mmVálido [1,2,3,4]
True

>>>mmVálido [1,2,3,9]
False

>>>mmVálido [1,2,3,4,5]
False

>>>mmVálido [1,2,4,4]
False

-}

mmVálido l = error "Implementar"

{-
Mastermind 2

Dado duas listas, se alguma não é válida, lançar uma exceção (use error).
Se as duas são válidas (ver exercício anterior), retornar uma tupla com a quantidade de acertos bons e ótimos da jogada.

Entrada
    - config - lista de inteiro
    - jogada - lista de inteiro

Resultado
    - tupla (o,b) onde o é um inteiro com a quantidade de cores em jogada e que aparecem na mesma posição em config
    e b é quantidade de cores em jogada e que aparecem em posições diferentes em config.


>>>tentativa [1,2,3,4] [5,6,7,8]
(0,0)

>>>tentativa [1,2,3,4] [1,2,3,4]
(4,0)

>>>tentativa [1,2,3,4] [4,3,2,1]
(0,4)

>>>tentativa [1,2,3,4] [2,1,3,4]
(2,2)

>>>tentativa [1,2,3,4,5] [2,1,3,4]
não válido
-}

tentativa config jogada = error "Implementar"










data Operação = Add | Mult | Div | Dif | Neg

{-
Defina um tipo algébrico Expressão com valores que representem as seguintes operações matemáticas básicas ou, recursivamente, outras expressões.
- Add (adição), Mult (multiplicação), Div (divisão), Dif (diferença) e Neg (negação do sinal).
- As operações tem 2 ou 1 operandos (somente a negação).
- As parâmetros são números inteiros OU outra expressão.
Escreva uma função que receba uma expressão e retorne o cálculo expressão.
- Use recursão e casamento de padrões.
- Os resultados são números inteiros (div é a divisão inteira)

Exemplo: A expressão  -1 * ((3*4) + 1) é representa assim

        EMult
       /     \
    ENeg      EAdd
   /         /     \
ENum   EMult       ENum
  |    /   \         |
  1   ENum  ENum     1
       |     |
       3     4

>>>calculaE (ENum 1)
1

>>>calculaE (ENeg (ENum 1))
-1

>>>calculaE (EMult (ENum 3) (ENum 4))
12

>>>calculaE (EMult (ENeg (ENum 1)) (EAdd (EMult (ENum 3) (ENum 4)) (ENum 1)))
-13
-}





