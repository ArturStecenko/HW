puts "=== Калькулятор ==="
puts "Введіть перше число (a):"
num1 = gets.chomp.to_f

puts "Введіть друге число (b):"
num2 = gets.chomp.to_f

puts "Введіть операцію (+, -, *, /):"
operation = gets.chomp

case operation
when "+"
  puts "Результат: #{num1} + #{num2} = #{num1 + num2}"
when "-"
  puts "Результат: #{num1} - #{num2} = #{num1 - num2}"
when "*"
  puts "Результат: #{num1} * #{num2} = #{num1 * num2}"
when "/"
  if num2 != 0
    puts "Результат: #{num1} / #{num2} = #{num1 / num2}"
  else
    puts "Помилка: ділення на нуль неможливе!"
  end
else
  puts "Помилка: невідома операція '#{operation}'"
end
