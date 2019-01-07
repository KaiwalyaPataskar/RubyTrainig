puts 'Enter first number : '
no1 = gets.chomp.to_f

puts 'Operator :  { +  -  *  /}'
op = gets.chomp

puts 'Enter second number : '
no2 = gets.chomp.to_f

#if !no1.numeric? or !no2.numeric?
#	puts 'Invalid input'
#end

case op
when '+'
  return no1+no2
when '-'
  puts "Ans : #{no1 - no2}"
when '*'
  puts "Ans : #{no1 * no2}"
when '/'
  puts "Ans : #{no1 / no2}"
else
  puts 'Invalid Operation'
end