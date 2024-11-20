-- |
module Main where

import Prelude hiding (and, (&&), const)

two = 2

constant = \x y -> x

isTrue = \x -> x == True

plusTwo = \x -> x + 2

-- f :: Int -> Int
f x = x + 2

-- const :: a -> b -> a
-- const x y = x

-- factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- hasEven :: Char -> String -> Bool
hasEven char string = even (loop 0 string)
  where
    loop n ""           = n
    loop n (ch : chars) = if ch == char
                            then loop (n + 1) chars
                            else loop n chars

-- say :: Int -> String -> String
say 0 _   = ""
say n str = str ++ say (n - 1) str

-- sayTwo :: String -> String
sayTwo str = say 2 str

-- and :: Bool -> Bool -> Bool
and True x  = x
and False _ = False

-- test = and True 'c'

-- (&&) :: Bool -> Bool -> Bool
True  && x  = x
False && _ = False

data Day = Saturday
         | Sunday
         | Monday
         | Tuesday
         | Wednesday
         | Thursday
         | Friday
         deriving Eq

nextDay Saturday  = Sunday
nextDay Sunday    = Monday
nextDay Monday    = Tuesday
nextDay Tuesday   = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday  = Friday
nextDay Friday    = Saturday

saturdayIsSaturaday = Saturday == Saturday

data Language = Haskell
              | Lean
              | Idris
              | Python
              | Lisp
              | Java

isPureFunctional Haskell = True
isPureFunctional Idris   = True
isPureFunctional Lean    = True
isPureFunctional _       = False

data Person = MakePerson String Int

myName =  MakePerson "Haskell" 34

getAge (MakePerson _ age) = age

getName (MakePerson name _) = name

data PersonR =
  MakePersonR
    { name :: String
    , age  :: Int }
  deriving (Show, Eq)

main = undefined
