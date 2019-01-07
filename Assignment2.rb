
puts 'Enter Dish name : ';
dish = gets.chomp

puts 'Enter the amount you have : ';
amount = gets.chomp.to_i

puts "\nDish : #{dish}  &  Amount : #{amount}\n\n"

hash = { Box8: ['Rajma,30', 'Vada Pav,50', 'Dal,20'],
         Locavore: ['Dal,10', 'Vada Pav,30', 'Sabji,40'],
         Flavours: ['Ice cream,10', 'Sandwich,20', 'Burger,30', 'Vada Pav,30']
}


hash.each do |key, value|
  value.each do |menu|
  	item = menu.split(',')
    
    if item.last.to_i <= amount and dish == item.first
	  puts "#{key}"
    end
 
  end
end
puts "\n" 