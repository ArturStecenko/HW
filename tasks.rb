arr = [3, -2, 0, 5, -6, 4, 1, -3, 7, 2]
puts "Початковий масив: #{arr.inspect}"

# 1
even_idx = []
odd_idx = []
arr.each_with_index do |x, i|
  if i.even?
    even_idx << x
  else
    odd_idx << x
  end
end
puts "\n1) Спочатку елементи з парними індексами, потім з непарними:"
puts "   #{(even_idx + odd_idx).inspect}"

# 2
res2 = arr.sort
puts "\n2) Упорядкувати за зростанням: #{res2.inspect}"

# 3
res3 = arr.sort.reverse
puts "\n3) Упорядкувати за спаданням: #{res3.inspect}"

# 4
min_val = arr.min
min_idx = arr.index(min_val)
puts "\n4) Індекс мінімального елемента (#{min_val}): #{min_idx}"

# 5
max_val = arr.max
max_idx = arr.index(max_val)
puts "\n5) Індекс максимального елемента (#{max_val}): #{max_idx}"

# 6
even_nums = []
odd_nums = []
arr.each do |x|
  if x.even?
    even_nums << x
  else
    odd_nums << x
  end
end
puts "\n6) Спочатку парні, потім непарні: #{(even_nums + odd_nums).inspect}"

# 7
count = 0
arr.each { |x| count += 1 if x.even? }
puts "\n7) Кількість парних елементів: #{count}"

# 8
sum = 0
arr.each { |x| sum += x }
avg = sum.to_f / arr.size
puts "\n8) Середнє арифметичне: #{avg}"

# 9
res9 = arr.dup
arr.each_with_index do |x, i|
  res9[i] = max_val if x > 0
end
puts "\n9) Замінити всі додатні на значення максимального (#{max_val}): #{res9.inspect}"

# 10
res10 = arr[1..] + [arr[0]]
puts "\n10) Циклічний зсув вліво: #{res10.inspect}"