-- |

module Main where

import Prelude hiding (and, (&&))

factorial 0 = 1
factorial n = n * factorial (n - 1)


hasEven char string = even (loop 0 string)
  where
    loop n ""           = n
    loop n (ch : chars) = if ch == char
                            then loop (n + 1) chars
                            else loop n chars


say 0 _   = ""
say n str = str ++ say (n-1) str


and True x  = x
and False _ = False

-- test = and True 'c'

True  && x  = x
False && _ = False

main = undefined
