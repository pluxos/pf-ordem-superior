module Exercise where
import Data.Char (isLetter, toLower)
import Data.List (group)

data Filtro = Menor | Maior | Igual deriving (Eq)

{-
O tipo Filtro pode ter um de três valores, como definido acima.
Escreva uma função recursiva que receba como entrada
- tupla com Filtro f na primeira posição e inteiro i na segunda posição.
- lista de inteiros l

Retorne
- Lista com todos os inteiros em l que são menores que i, se f for Menor, maiores que i se
f for Maior, e iguais a i, se f for Igual.

>>> filtre (Maior, 10) [1..20]
[11,12,13,14,15,16,17,18,19,20]
>>> filtre (Menor, 10) [1..20]
[1,2,3,4,5,6,7,8,9]

-}

filtre :: (Filtro,Int) -> [Int] -> [Int]
filtre (cond,i) l = undefined

{-
Defina a função filtre' que recebe uma função que, aplicada a cada elemento da lista, retorne True ou False.
Se a função retornar True, então inclua o elemento na resposta; se retornar False, não inclua.

Use compreensão de listas.

>>> filtre' (> 10) [1..20]
[11,12,13,14,15,16,17,18,19,20]
>>> filtre' (10 <) [1..20]
[11,12,13,14,15,16,17,18,19,20]

>>> filtre' (< 10) [1..20]
[1,2,3,4,5,6,7,8,9]
>>> filtre' (10 >) [1..20]
[1,2,3,4,5,6,7,8,9]
-}

filtre' :: (Int -> Bool) -> [Int] -> [Int]
filtre' f l = undefined

{-
Defina a função filtre'' que funcione exatamente como filtre', mas que use filter em sua implementação.
-}

filtre'' :: (Int -> Bool) -> [Int] -> [Int]
filtre''  f l = undefined


{-
Defina uma função que receba uma lista de palavras e retorne o reverso destas palavras.
Use recursão.

>>> reversos ["lala","lele","lili"]
["alal","elel","ilil"]
-}

reversos :: [String] -> [String]
reversos [] = undefine

{-
Defina reversos' com a mesma semântica que reversos.
Use map
>>> reversos' ["lala","lele","lili"]
["alal","elel","ilil"]
-}

reversos' :: [String] -> [String]
reversos' l = undefined



{-
Resolva os seguintes exercícios, inspirados em https://www.cantab.net/users/antoni.diller/haskell/questions/quest06.pdf
usando foldr e foldl.
Para a versão que usa foldr, o nome da função termina R; para a função que usa foldl, termina com L.

Escreva pelo menos 2 testes para cada função, no arquivo Test.hs

1 - Usando foldX, onde X <- [R,L], defina uma função somaQuadsX que recebe como parâmetro um inteiro n e retorna a soma dos quadrados dos primeiros n inteiros, isto é,
somaQuads n = 1^2 + 2^2 + 3^2 ... n^2

>>> somaQuadsR 3
14
>>> somaQuadsL 3
14
-} 

somaQuadsR :: Int -> Int
somaQuadsR max = undefined

somaQuadsL :: Int -> Int
somaQuadsL max = undefined

{-
2 - Usando foldX, defina uma função compX que calcule o comprimento de uma lista.

>>>compR [1..10]
10

>>>compL  [1..3]
3
-}

compR :: [a] -> Int
compR l = undefined

compL :: [a] -> Int
compL l = undefined


{-

3 - Usando foldX, defina uma função mínimoX que calcule o menor número em uma lista não vazia de inteiros.
>>> mínimoR [10,9..0]
0
>>> mínimoR [10..100]
10
>>> mínimoR [1..10]
1
>>> mínimoR [10,9..1]
1
>>> mínimoL [10,9..0]
0
>>> mínimoL [10..100]
10
>>> mínimoL [1..10]
1
>>> mínimoL [10,9..1]
1

-}

mínimoR :: [Int] -> Int
mínimoR [] = undefined

mínimoL :: [Int] -> Int
mínimoL [] = undefined


{-

4 - Usando foldX, defina uam função reverteX que reverte uma lista.

>>> reverteR [1..10]
[10,9,8,7,6,5,4,3,2,1]
>>> reverteL [1..10]
[10,9,8,7,6,5,4,3,2,1]
-}

reverteR ::  [Int] -> [Int]
reverteR l = undefined

reverteL ::  [Int] -> [Int]
reverteL l = undefined


{-
5 - Usando foldX, defina uma função removeDupX que recebe duas listas e que remova todo elemento da segunda lista 
que aparece na primeira lista.

>>> removeDupR [1,3..10] [1..10] -- observe que o 10 não faz parte da primeira lista.
[2,4,6,8,10]

>>>removeDupL [1,2,3,5] [0,1,2,4,3,5]
[0,4]

-}

removeDupR :: Eq a => [a] -> [a] -> [a]
removeDupR l1 l2 = undefined

removeDupL :: Eq a => [a] -> [a] -> [a]
removeDupL l1 l2 = undefined
