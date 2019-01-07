array = [ {numbers: [1,2,3]}, {numbers: [1,2]}, {numbers: [1,2,3,4]} ]

#puts array[0][:numbers].size

array.sort_by!{|index| index[:numbers].size}
puts array

=begin for i in 0..array.length
  array.each do |element|
	  puts element[:numbers].size
  end 
 end
=end 