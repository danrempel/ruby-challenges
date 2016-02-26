puts "Are you being good or bad?"
you = gets.chomp.downcase

while ( you == "good" )
  puts "I love you."
  puts "How about now? Good or bad?"
  you = gets.chomp.downcase
end

while ( you == "bad" )
  puts "I still love you..."
  puts "How about now? Good or bad?"
  you = gets.chomp.downcase
end
