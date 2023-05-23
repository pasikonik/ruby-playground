def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

def find_factors(number)
  product = 0
  pointer = 1
  
  while product < number
    product = fibonacci(pointer) * fibonacci(pointer + 1)
    pointer += 1
  end
  
  [fibonacci(pointer - 1), fibonacci(pointer)]
end

def productFib(prod)
    first, second = find_factors(prod)

    result = first * second
    correct = result == prod
    
    [first, second, correct]
end
