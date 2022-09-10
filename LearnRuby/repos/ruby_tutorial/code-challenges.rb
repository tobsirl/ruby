def arithmetic(a, b, operator)
  case operator
  when "add"
    a + b 
  when "subtract"
    a - b
  when "multiply"
    a * b
  when "divide"
    a / b
  end
end

# Super Duper Easy
# Make a function that returns the value multiplied by 50 and increased by 6. 
# If the value entered is a string it should return "Error".
def problem x
  if x.is_a? String
    "Error"
  else
    (x * 50) + 6
  end
end

def problem x
  x*50+6 rescue 'Error'
end