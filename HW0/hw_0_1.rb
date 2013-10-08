def sum(lista)
  total = 0
  lista.each{ |elem| total += elem }
  total
end

def max_2_sum(lista)
  l = lista.length
  a = l>0 ? lista[0] : 0
  b = l>1 ? lista[1] : 0

  if (b>a)
    c = b
    b = a
    a = c
  end
  
  lista.each  do |elem|
    if (elem>b)
      b = elem
    end
    if (b>a)
      c = b
      b = a
      a = c
    end
  end

  a + b

end

def sum_to_n?(lista, target)
  
end
