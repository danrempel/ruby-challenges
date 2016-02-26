def birth_math(bd)
	bd = bd.to_s.split("")
	bd = bd.map(&:to_i)
	bd = bd.inject(0, :+)
end

def birth_num(bd)
	bd = birth_math(bd)
	bd = birth_math(bd)
	if bd > 9
		bd = birth_math(bd)
	else
		return bd
	end
end

print "Please enter your birthdate (format MMDDYYYY): "
bd = gets.chomp

bd = birth_num(bd)

puts bd

# case(bd.to_s)
# 	when "1" then puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
# 	when "2" then puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
# 	when "3" then puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
# 	when "4" then puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
# 	when "5" then puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
# 	when "6" then puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
# 	when "7" then puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
# 	when "8" then puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
# 	when "9" then puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
# 	else puts "Your number is wrong!"
# end