#9. Дано цілочисельний масив. Замінити всі додатні елементи на значення мінімального. 1)
def replace_positive_with_min(array)
  min_value = array.min
  array.map! { |element| element > 0 ? min_value : element }
  return array
end
#10. Дано цілочисельний масив. Замінити всі додатні елементи на значення максимального. 2)
def replace_positive_with_max(array)
  max_value = array.max
  array.map! { |element| element > 0 ? max_value : element }
  return array
end

#11. Дано цілочисельний масив. Замінити всі від'ємні елементи на значення мінімального. 4)
def replace_negative_with_min(array)
  min_value = array.min
  array.map! { |element| element < 0 ? min_value : element }
  return array
end

#12. Дано цілочисельний масив. Замінити всі від'ємні елементи на значення максимального. 5)
def replace_negative_with_max(array)
  max_value = array.max
  array.map! { |element| element < 0 ? max_value : element }
  return array
end

#17  Дано цілочисельний масив. Знайти кількість його локальних максимумів. 6)
def count_local_maxima(array)
  count = 0
  return count if array.empty?

  (1..array.length - 2).each do |i|
    if array[i] > array[i - 1] && array[i] > array[i + 1]
      count += 1
    end
  end

  return count
end

#18  Дано цілочисельний масив. Знайти кількість його локальних мінімумів. 7)
def count_local_minima(array)
  count = 0
  return count if array.empty?

  (1..array.length - 2).each do |i|
    if array[i] < array[i - 1] && array[i] < array[i + 1]
      count += 1
    end
  end

  return count
end

#29  Дано цілочисельний масив. Упорядкувати його за зростанням. 8)
def sort_array_ascending(array)
  sorted_array = array.sort
  return sorted_array
end

#30  Дано цілочисельний масив. Упорядкувати його за спаданням. 9)
def sort_array_descending(array)
  sorted_array = array.sort.reverse
  return sorted_array
end

#33  Дано цілочисельний масив. Знайти індекс мінімального елемента. 10)
def find_index_of_min_element(array)
  min_value = array.min
  min_index = array.index(min_value)
  return min_index
end

#34  Дано цілочисельний масив. Знайти індекс максимального елемента. 11)
def find_index_of_max_element(array)
  max_value = array.max
  max_index = array.index(max_value)
  return max_index
end

#39 Дано цілочисельний масив. Знайти мінімальний парний елемент. 12)
def find_min_even_element(array)
  min_even = array.select { |element| element.even? }.min
  return min_even
end

#40 Дано цілочисельний масив. Знайти мінімальний непарний елемент. 13)
def find_min_odd_element(array)
  min_odd = array.select { |element| element.odd? }.min
  return min_odd
end

#59 Дано цілочисельний масив. Знайти два найбільші елементи. 14)
def find_two_largest_elements(array)
  sorted_array = array.sort.reverse
  two_largest = sorted_array.take(2)
  return two_largest
end

#60 Дано цілочисельний масив. Знайти два найменших елементи. 15)
def find_two_smallest_elements(array)
  sorted_array = array.sort
  two_smallest = sorted_array.take(2)
  return two_smallest
end
