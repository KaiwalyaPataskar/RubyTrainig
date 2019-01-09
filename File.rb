flag = 0
begin
  puts 'Enter file name : '
  file_name = gets.chomp  
  raise 'Exception caught : File not found' if (File.exist?(file_name) == false)
  raise 'File is not readable' if(File.readable?(file_name) == false)
  puts 'Enter word to search : ';
  word = gets.chomp
  
  File.open(file_name).each_with_index do |line, index|	  #print index+1,'  ', line
	  p index if line.downcase.scan(word).count > 0
  end

rescue Exception => e
  puts e.message
  flag += 1
  retry if(flag < 3)
end

print "\n"