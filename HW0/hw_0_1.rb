def sum(lista)
  # Define a method sum which takes an array of integers as an argument
  # and returns the sum of its elements. For an empty array it should return zero.
  total = 0
  lista.each{ |elem| total += elem }
  total
end

def max_2_sum(lista)
  # Define a method max_2_sum which takes an array of integers as an argument
  # and returns the sum of its two largest elements.
  # For an empty array it should return zero.
  # For an array with just one element, it should return that element.
  n = lista.length
  if (n==0)
    return 0
  elsif (n==1)
    return lista[0]
  elsif (n>1)
    aux = lista.dup
    second, top = aux.slice!(0,2).sort!
    aux.each do |elem|
      if (elem>top)
        second = top
        top = elem
      elsif (elem>second)
        second = elem
      end
    end
    return second + top
  end 
end

def sum_to_n?(lista, target)
  # Define a method sum_to_n? which takes an array of integers and an additional integer, n,
  # as arguments and returns true if any two elements in the array of integers sum to n.
  # An empty array should sum to zero by definition.
  if lista.length==0
    return (target==0)
  elsif lista.length==1
    return (target==lista[0])
  else
    a = lista.dup
    b = Array.new
    
    while a.length > 0
      x = a.slice!(0)
      b.each do |y|
        if x+y==target
          return true
        end
      end
      b << x
    end
    return false
  end
  
end
