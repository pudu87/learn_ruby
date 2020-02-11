def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  sum = 0
  array.each { |i| sum += i }
  return sum
end

def multiply(*array)
  product = 1
  array.each { |i| product *= i }
  return product
end

def power(a, b)
  return a ** b
end

def factorial(a)
  if a == 0
    return 1
  end
  return a * factorial(a - 1)
end