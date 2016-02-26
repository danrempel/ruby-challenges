num=*(1..100)

num.each do |fizzbuzz|
	if fizzbuzz %3 == 0 && fizzbuzz %5 == 0
    puts "fizzbuzz"
  elsif fizzbuzz %3 == 0
    puts "fizz"
  elsif fizzbuzz %5 == 0
    puts "buzz"
  else
    puts fizzbuzz
  end
end
