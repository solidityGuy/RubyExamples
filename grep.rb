puts "Input a file to be read"
file = gets.chomp

puts "Input a string to search for in the file"
search = gets.chomp

File.foreach(file) do |line|
  if line.include?(search)
    puts line
  end
end
