-- multiply x y = x * y
-- doubleMe x = x * 2

-- superMax x y = multiply x y * doubleMe x

-- doubleSmall x = if x > 100 then x else x * 2

-- boomBangs xs = [if x > 10 then "BOOM" else "BANG" | x <- xs, odd x]

-- func xs = [x | x <-xs, x /= 13, x /= 15, x /=19]

-- multiVal xs ys = [x * y | x <-xs, y <- ys, x*y > 20]

-- months = ["1月", "2月", "3月", "4月"]
-- days = ["1", "2", "3", "4"]

-- monthDay = [x ++ " " ++ y | x <- months, y <- days]

-- length' xs = sum [1 | x <- xs]

-- removeNonUppercase xs = [x | x <- xs, x `elem` ['A' .. 'Z']]

-- func = [ [x | x <- xs, even x] | xs <- [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]] ]

-- [fst x | x <- [(8, 1), (2,3)]]

{-
let triangles = [(a, b, c) | c <- [1..10], b <- [1..10], a <- [1..10]]
let rightTriangles = [(a,b,c) | c <- [1..10], b <-[1..c], a <- [1..b], a^2 + b^2 == c^2]
let rightTriangles' = [(a,b,c) | c <- [1..10], b <-[1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c = 24]
-}

-- removeNonUppercase :: String -> String
-- removeNonUppercase xs = [x | x <- xs, x `elem` ['A'.. 'Z']]

-- addThree :: Int -> Int -> Int -> Int   
-- addThree x y z = x + y + z

-- lucky :: (Integral a) => a -> String
-- lucky 7 = "LUCKY NUMBER SEVEN!"
-- lucky x = "Sorry, you're out of luck, pal!"

-- sayMe :: (Integral a) => a -> String   
-- sayMe 1 = "One!"   
-- sayMe 2 = "Two!"   
-- sayMe 3 = "Three!"   
-- sayMe 4 = "Four!"   
-- sayMe 5 = "Five!"   
-- sayMe x = "Not between 1 and 5"  

-- factorial :: (Integral a) => a -> a
-- factorial 0 = 1
-- factorial n = n * factorial(n - 1)

-- addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)

-- addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- first :: (a, b, c) -> a
-- first (a, _, _) = a

-- [a + b | (a, b) <- [(1,3), (2,3), (4, 5), (3,1)]]

-- head' :: [a] -> a
-- head' [] = error "error !"
-- head' (x: _) = x

-- tell :: (Show a) => [a] -> String
-- tell [] = "this is empty"
-- tell (x: []) = "this list has one element" ++ show x
-- tell (x:y:[]) = "has two element" ++ show x ++ " and " ++ show y
-- tell (x:y:_) = "list is too long, fist is " ++ show x ++ " and second is " ++ show y

-- length' :: (Num b) => [a] -> b
-- length' [] = 0
-- length' (_:xs) = 1 + length' xs

-- capital :: String -> String
-- capital "" = "Empty string"
-- capital all@(x:xs) = "fist letter of " ++ all ++ " is " ++ [x]

-- bmiTell :: (RealFloat a) => a -> String

-- bmiTell  bmi
--     | bmi <= 18 = "thin"
--     | bmi <= 25.0 = "normal"
--     | bmi <= 30.0 = "fat"
--     | otherwise = "too fat"

-- bmiTell :: (RealFloat a) => a -> a -> String
-- bmiTell weight height
--     | bmi <= thin = "thin"
--     | bmi <= normal = "normal"
--     | bmi <= fat = "fat"
--     | otherwise = "too fat"
--     where bmi = weight / height ^ 2
--         (thin, normal, fat) = (18.5, 25, 30)

-- initials :: String -> String -> String
-- initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
--     where (f:_) = firstname
--           (l:_) = lastname

-- cylinder :: (RealFloat a) => a -> a -> a
-- cylinder r h = 
--     let sideArea = 2 * pi * r * h
--         topArea = pi * r ^ 2
--     in  sideArea + 2 * topArea


-- func = [let square x = x * x in (square 5, square 3, square 2)]

-- calcBmis :: (RealFloat a) => [(a, a)] -> [a]
-- calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25]

-- head' :: [a] -> a
-- head' xs = case xs of [] -> error "No head for empty list"
--                       (x:_) -> x

-- describeList :: [a] -> String
-- describeList xs = "this list is " ++ case xs of [] -> "empty list"
--                                                 [x] -> "single list"
--                                                 xs -> "long list"

-- describeList :: [a] -> String
-- describeList xs = "this list is " ++ what xs
--     where what [] = "empty"
--           what [x] = "single list"
--           what xs = "long list"

-- maximum' :: (Ord a) => [a] -> a
-- maximum' [] = error "empty list"
-- maximum' [x] = x
-- maximum' (x:xs)
--     | x > maxTail = x
--     | otherwise = maxTail
--     where maxTail = maximum' xs

-- maximum' :: (Ord a) => [a] -> a
-- maximum' [] = error "empty list"
-- maximum' [x] = x
-- maximum' (x:xs) = max x (maximum' xs)

-- replicate' :: (Num i, Ord i) => i -> a -> [a]
-- replicate' n x
--     | n <= 0 = []
--     | otherwise = x:replicate' (n-1) x

-- take' :: (Num i, Ord i) => i -> [a] -> [a]
-- take' n _
--     | n <= 0 = []
--     | _ [] = []
--     | n (x:xs) = x: take' (n - 1) xs

-- reverse' :: [a] -> [a]
-- reverse' [] = []
-- reverse' (x:xs) = reverse' xs ++ [x]

-- repeat' :: a -> [a]
-- repeat' x = x:repeat' x

-- zip' :: [a] -> [b] -> [(a, b)]
-- zip' _ [] = []
-- zip' [] _ = []
-- zip' (x:xs) (y:ys) = (x, y): zip' xs ys

-- elem' :: (Eq a) => a -> [a] -> Bool
-- elem' a [] = False
-- elem' a (x:xs)
--     | a == x = True
--     | otherwise = elem' a xs

-- quicksort :: (Ord a) => [a] -> [a]
-- quicksort [] = []
-- quicksort (x:xs) =
--     let small = quicksort [a | a <- xs, a <= x]
--         big = quicksort [a | a <- xs, a > x]
--     in small ++ [x] ++ big

-- isUpperAlphanum :: Char -> Bool
-- isUpperAlphanum = (`elem` ['A'..'Z'])

-- applyTwice :: (a -> a) -> a  -> a
-- applyTwice f x = f (f x)

-- zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith' _ [] _ = []
-- zipWith' _ _ [] = []
-- zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- map' :: (a -> b) -> [a] -> [b]
-- map' _ [] = []
-- map' f (x:xs) = f x:map' f xs

-- filter' :: (a -> Bool) -> [a] -> [a]
-- filter' _ [] = []
-- filter' f (x:xs)
--     | f x = x: filter' f xs
--     | otherwise = filter f xs

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain(n `div` 2)
    | odd n = n:chain(n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15



