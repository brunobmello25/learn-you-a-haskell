-- Example of functions using guards
--
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

-- note that otherwise is a function:
-- otherwise = True

maximo :: Ord p => p -> p -> p
maximo a b
    | a >= b    = a
    | otherwise = b

bmiCalc :: (RealFloat a) => a -> a -> String
bmiCalc weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
    | bmi ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | bmi ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2

---------------------------------------------------

