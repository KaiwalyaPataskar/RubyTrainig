def myMap(array)
	new_array = []
	array.each do |element|
    new_array<<yield(element)
	end
	new_array
end


def myMap!(array)
	array.each_with_index do |element, i|
		 array[i] = yield(element)
	end
	array
end


array = [1,2,3,4]

new_array = myMap(array) {|n| n+2}
puts "Array : #{array}\nNew Array : #{new_array}"

puts "\nMap with Bang\n"
array = myMap!(array) {|n| n+2}
puts "Array : #{array}\n"

