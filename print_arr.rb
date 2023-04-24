arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

arr.each_slice(4){|n, o, p, q| puts "#{n} #{o} #{p} #{q}" }

count = 0
arr.each do |item|
  print item.to_s + " "
  count += 1
  if count % 4 == 0
    puts ""
  end
end
