puts 'Enter Dish name : ';
dish = gets.chomp

puts 'Enter the amount you have : ';
amount = gets.chomp.to_i

puts "\nDish : #{dish}  &  Amount : #{amount}\n\n"

hash = { Box8: [{dish: 'Rajma', price: 30}, {dish: 'Vada Pav' , price: 50}, {dish: 'Dal', price: 20}],
         Locavore: [{dish:'Dal', price: 10}, {dish: 'Vada Pav', price: 30}, {dish: 'Sabji', price: 40}],
         Flavours: [{dish:'Ice cream', price: 10}, {dish: 'Sandwich', price: 20}, {dish: 'Burger', price: 30}, {dish: 'Vada Pav', price: 30}]
       }

hash.keys.each do |vendor|
	hash[vendor].each do |menu_array|
		if ((menu_array[:dish].eql? dish) && (menu_array[:price] <= amount))
			puts "#{vendor}"	
		end
	end
end
