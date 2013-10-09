def sum(lista)
  total = 0
  lista.each{ |elem| total += elem }
  total
end

def max_2_sum(lista)
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
