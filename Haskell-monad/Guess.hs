{-
 Author: Eunsoo jang
 File: Guess.hs
-}


module Main where

import System.Random
import Text.Read ( readMaybe )

main :: IO ()
main = do
 num <- randomRIO (1,10)
 loop num

loop ::Integer -> IO ()
loop num = do
  m_line <- prompt "Guess a number from 1-10."
  case readMaybe m_line of
    Nothing  -> putStrLn "Quitting out"
    Just guess -> isRight num guess

isRight :: Integer -> Integer -> IO()
isRight n g
 |n==g = putStrLn "Correct"
 |otherwise = loop n

prompt::String -> IO String
prompt query = do
  putStrLn query
  answer <- getLine
  pure answer
