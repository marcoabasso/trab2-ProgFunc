--Marco Antonio Basso

--Q1
soma1::Integer->Integer
soma1 x = x + 1
--ENDQ1

--Q2
sempre::a->Integer
sempre x = 0
--ENDQ2

--Q3
treco::Double->Double->Double->Double
treco x y z = (x + y) * z
--ENDQ3

--Q4
resto::Integer->Integer->Integer
resto x y = x `mod` y
--ENDQ4

--Q5
maiorD::Double->Double->Double
maiorD x y 
      | x > y = x
      |otherwise = y 

precoMaior::Double->Double->Double->Double->Double
precoMaior x y w z = maiorD x (maiorD y (maiorD w z)) 
--ENDQ5

--Q6
impar::Integer->Integer->Bool
impar x y 
      |even(x * y) = False
      |otherwise = True
--ENDQ6


--Q?
soma::Integer->Integer->Integer
soma x y = x + y
--ENDQ?

--Q7
eq::Double->Double->Double->Double
eq x y z = (x*x) + (y/2.0) + z
--ENDQ7

--Q8
imc::Double->Double->Double
imc x y 
      |x > y = x / (y * y)
      |otherwise = y / (x * x)

diagnostico::Double->Double->String
diagnostico x y
      |imc x y < 17.0 = "Muito abaixo do peso!"
      |imc x y >= 17.0 && imc x y < 18.5 = "Abaixo do peso"
      |imc x y >= 18.5 && imc x y < 25.0 = "Peso normal"
      |imc x y >= 25.0 && imc x y < 30.0 = "Sobrepeso"
      |imc x y >= 30.0 && imc x y < 35.0 = "Obesidade leve"
      |imc x y >= 35.0 && imc x y < 40.0 = "Obesidade severa"
      |imc x y >= 40.0 = "Obesidade morbida"
--ENDQ8

--Q9
bissexto::Integer->Bool
bissexto x = ((x `mod` 4 == 0) && (x `mod` 100 /= 0)) || x `mod` 400 == 0
--ENDQ9

main = do
    print(soma1 5)
    print(sempre "alo")
    print(sempre 5)
    print(sempre 1.5)
    print(treco 1.3 2.1 0.6)
    print(resto 10 3)
    print(precoMaior 1533.52 234.52 3216.51 3216.50)
    print(impar 3 5)
    print(impar 2 5)
    print(soma 4 5)
    print(eq 1.2 2.3 3.4)
    print(diagnostico 85.5 1.73)
    print(diagnostico 1.65 58.9)
    print(bissexto 1996)
    print(bissexto 1990)
    print(bissexto 2000)
    print(bissexto 2012)