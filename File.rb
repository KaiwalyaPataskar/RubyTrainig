file_name = ''
word = ''
flag = 0

begin
  puts 'Enter file name : '
  file_name = gets.chomp  
  puts 'Enter word to search : ';
  word = gets.chomp

  File.open(file_name).each_with_index do |line, index|	  #print index+1,'  ', line
	  if line.downcase.scan(word).count > 0
		  p index 
	  end		
  end

rescue Errno::ENOENT
  puts 'Invalid File name!'
  flag += 1
  if(flag < 3)
  	retry
	end
end

print "\n"