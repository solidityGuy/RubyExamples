x = rand(10)

num = 220
while num.to_i != x
  puts 'Input a number'
  num = gets
  if num.to_i < x
    puts 'Too cold'
  elsif num.to_i > x
    puts 'Too hot'
  end
end

puts 'You win!'
