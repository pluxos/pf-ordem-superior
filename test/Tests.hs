import Test.Hspec        (Spec, it, describe, shouldBe, anyErrorCall, anyException, shouldThrow)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)
import Test.QuickCheck
import Control.Exception.Base

import Data.Char (isUpper,isLower,toUpper,toLower,isLetter)
import Data.List

import Exercise

valores = elements [1..13] :: Gen Int
naipes  = elements ["ouro","copas","paus","espada"] :: Gen String

main :: IO ()
main = hspecWith defaultConfig {configFastFail = False} specs

specs :: Spec
specs = do
{-
--Quickcheck
          describe "filtre" $ do
            it "multiplica" $ property $
               (\x y -> multiplique x y == x*y)

Plain HSpec
          describe "união" $ do
            it "une" $ do
               união []  [1,2] `shouldBe` [1,2]

-}

          describe "Filtre" $ do
            it "Maior" $ do
               filtre (Maior, 10) [1..20] `shouldBe` [11..20]
            it "Menor" $ do
               filtre (Menor, 10) [1..20] `shouldBe` [1..9]
            it "Igual" $ do
               filtre (Igual, 10) [1..20] `shouldBe` [10]

          describe "Filtre'" $ do
            it "Maior" $ do
               filtre' (> 10) [1..20] `shouldBe` [11..20]
            it "Menor" $ do
               filtre' (< 10) [1..20] `shouldBe` [1..9]
            it "Igual" $ do
               filtre' (== 10) [1..20] `shouldBe` [10]

          describe "Filtre''" $ do
            it "Maior" $ do
               filtre'' (> 10) [1..20] `shouldBe` [11..20]
            it "Menor" $ do
               filtre'' (< 10) [1..20] `shouldBe` [1..9]
            it "Igual" $ do
               filtre'' (== 10) [1..20] `shouldBe` [10]


          describe "reversos" $ do
            it "simples" $ do
              reversos ["lala","lele","lili"] `shouldBe` ["alal","elel","ilil"]
            it "duplo" $ do
              reversos (reversos ["lala","lele","lili"]) `shouldBe` ["lala","lele","lili"]

          describe "reversos'" $ do
            it "simples" $ do
              reversos' ["lala","lele","lili"] `shouldBe` ["alal","elel","ilil"]
            it "duplo" $ do
              reversos' (reversos' ["lala","lele","lili"]) `shouldBe` ["lala","lele","lili"]


          describe "soma quadrados'" $ do
            it "R 3" $ do
              somaQuadsR 3 `shouldBe` 14
            it "L 3" $ do
              somaQuadsL 3 `shouldBe` 14

          describe "comprimento" $ do
            it "R 10" $ do
              compR [1..10] `shouldBe` 10
            it "L 10" $ do
              compL [1..10] `shouldBe` 10

          describe "mínimo" $ do
            it "R 0" $ do
              mínimoR [10,9..0] `shouldBe` 0
            it "L 0" $ do
              mínimoL [10,9..0] `shouldBe` 0
            it "R 0" $ do
              mínimoR [0..10] `shouldBe` 0
            it "L 0" $ do
              mínimoL [0..10] `shouldBe` 0

          describe "Reverte" $ do
            it "R 10" $ do
              reverteR [1..10] `shouldBe` [10,9..1]
            it "L 10" $ do
              reverteL [1..10] `shouldBe` [10,9..1]
            it "RL 10" $ do
              reverteR [1..10] `shouldBe` reverteL [1..10]

          describe "removeDup" $ do
            it "R 10" $ do
              removeDupR [1,3..10] [1..10] `shouldBe` [2,4,6,8,10]
            it "L 10" $ do
              removeDupL [1,3..10] [1..10] `shouldBe` [2,4,6,8,10]
            it "RL 100" $ do
              removeDupL [1..100] [1..110] `shouldBe` [101..110]

