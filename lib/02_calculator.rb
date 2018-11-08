def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  total = 0
  arr.each { |ele| total += ele }
  total
end

def multiply(num1, num2)
  num1 * num2
end

def power(num, pow)
  num ** pow
end

def factorial(n)
  total = 1
  (1..n).each { |i| total *= i }
  total
end
