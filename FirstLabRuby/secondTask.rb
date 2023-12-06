def calculator(operator, num1, num2)
  case operator
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    if num2 != 0
      result = num1.to_f / num2
    else
      puts "Error: division by zero!"
      return
    end
  else
    puts "Error: unknown operation"
    return
  end

  puts "Result: #{result}"
end
