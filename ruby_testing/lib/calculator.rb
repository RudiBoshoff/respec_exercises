class Calculator
  def add(a,b,c = 0)
    a + b + c
  end

  def multiply(a,b)
    a * b
  end

  def subtract(a,b)
    a - b
  end

  def divide(a,b)
    a.to_f / b.to_f
  end
end