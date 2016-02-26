# Original Script

# puts "\nThis script will take any number you give it and return the number 3 back!\n\n"
# puts "Don't believe me? Go ahead and enter your number:\n\n"

# the_number = gets.chomp
# modified_number = the_number.to_i
# modified_number += 5
# modified_number *= 2
# modified_number -= 4
# modified_number /= 2

# always_three = modified_number - the_number.to_i

# puts "\nThe result of this script equals #{always_three}."


# Refactor

# print "This script will take any number you give it and return the number 3 back! Don't believe me? Go ahead and enter your number: "

# orig_num = gets.chomp.to_i
# num = orig_num
# num = num +=5
# num = num *= 2
# num = num -= 4
# num = num /= 2

# num = num - orig_num

# puts "The result of this script equals #{num}."


# Master Refactor

# print "Enter your number: "
# num = gets.to_i
# puts (((num + 5) * 2 - 4) / 2 - num)

# Refactor as a Method

def always_three(num)
	puts (((num + 5) * 2 - 4) / 2 - num).to_s
end

print "Enter your number: "
num = gets.to_i

always_three(num)
