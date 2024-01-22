def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.reduce(0, :+)
end

def multiply(a, b)
  a * b
end

def power(base, exponent)
  base ** exponent
end

def factorial(n)
  if n == 0 || n == 1
    1
  else
    (1..n).reduce(:*)
  end
end
