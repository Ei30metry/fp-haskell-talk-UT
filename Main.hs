-- |
module Main where

import Prelude hiding (and, (&&), const, (.), map)

two :: Integer
two = 2

plusTwo :: Integer -> Integer
plusTwo = \x -> x + 2

plusTwo' :: Integer -> Integer
plusTwo' x = x + 2

const :: a -> b -> a
const x y = x

(+++) :: String -> String -> String
str1 +++ str2 = strConcat str1 str2

-- s1 +++ s2 +++ s3 == (s1 +++ s2) +++ s3
--                  == s1 +++ (s2 +++ s3)

compose :: (b -> c) -> (a -> b) -> a -> c
compose g f x = g (f x)

(.) :: (b -> c) -> (a -> b) -> a -> c
(.) g f x = g (f x)

-- h . g . f = h . (g . f)

compositionExample = (\y -> y^9 ) . (\x -> x * 3) . plusTwo . const 4

compositionExample2 = (^ 9) . (* 3) . plusTwo . const 4

-- factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- hasEven :: Char -> String -> Bool
hasEven char string = even (loop 0 string)
  where
    loop n ""           = n
    loop n (ch : chars) = if ch == char
                            then loop (n + 1) chars
                            else loop n chars

-- say :: Integer -> String -> String
say 0 _   = ""
say n str = str ++ say (n - 1) str

-- sayTwo :: String -> String
sayTwo str = say 2 str

and :: Bool -> Bool -> Bool
and True x  = x
and False _ = False

-- test = and True 'c'

-- (&&) :: Bool -> Bool -> Bool
True  && x  = x
False && _ = False

type Size = Int

data HasRice = Yes | No

data Food = Pizza Size | Kebab Size HasRice

isKebabWithRice :: Food -> HasRice
isKebabWithRice (Kebab _ hasRice) = hasRice
isKebabWithRice _                 = No

getFoodSize :: Food -> Size
getFoodSize (Pizza size)   = size
getFoodSize (Kebab size _) = size

isPizzaOfSizeSeven :: Food -> Bool
isPizzaOfSizeSeven (Pizza 7) = True
isPizzaOfSizeSeven _         = False

(/?) :: Integer -> Integer -> Maybe Integer
x /? 0 = Nothing
x /? y = Just (division x y)

-- class Show a where
--   show :: a -> String

-- instance Show Bool where
--   show True  = "True"
--   show False = "False"

-- class Functor f where
--   fmap :: (a -> b) -> f a -> f b

-- instance Functor [] where
--   fmap = map

-- fmap id x == x
-- fmap (g . f) x == (fmap g . fmap f) x

-- instance Functor Maybe where
--   fmap f (Just x) = Just (f x)
--   fmap f Nothing = Nothing

type List a = [a]

map :: (a -> b) -> List a -> List b
map f [] = []
map f (x : xs) = f x : map f xs

strConcat = (<>)

main = undefined

division :: Integer -> Integer -> Integer
division = undefined

-- (+) :: Integer -> Integer -> Integer
-- (+) = undefined
