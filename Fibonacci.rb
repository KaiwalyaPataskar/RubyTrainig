puts 'Enter n : '
n = gets.chomp.to_i
array = [0, 1]
(1..n).inject(array) { |array| array << array.last(2).inject(:+) }
p array