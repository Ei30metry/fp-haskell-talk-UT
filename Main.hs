-- |
module Main where

import Prelude hiding (and, (&&), const)

-- f :: Int -> Int
f x = x + 2

-- const :: a -> b -> a
const x y = x

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

main = undefined
