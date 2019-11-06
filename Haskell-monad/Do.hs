{- Author: Eunsoo jang
 File: Do.hs
 Practice exercises with do-notation
2
-}
module Main where

main :: IO ()
main = do
 putStrLn "Hello, world!"
 name <- prompt "What is your name?"
 putStrLn $ "Hello, " ++ name

prompt::String -> IO String
prompt query = do
 putStrLn query
 answer <- getLine
 pure answer

prompt2::String -> IO String
prompt2 query = do
 putStrLn query
 answer <- getLine
 answer2 <-getLine
 let f_answer = answer ++ answer2
 pure f_answer
