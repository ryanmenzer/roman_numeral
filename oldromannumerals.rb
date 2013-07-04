def old_roman_numeral
	while true
	puts "What number do you want to convert?"
	print "> "
	number = gets.chomp.to_i
	
		m = number / 1000
		print "M" * m
		m_rem = number % 1000
		d = m_rem / 500
		print "D" * d
		d_rem = number % 500
		c = d_rem / 100
		print "C" * c
		c_rem = number % 100
		l = c_rem / 50
		print "L" * l
		l_rem = number % 50
		x = l_rem / 10
		print "X" * x
		x_rem = number % 10
		v = x_rem / 5
		print "V" * v
		v_rem = number % 5
		i = v_rem / 1
		print "I" * i
		puts
		if number == 0 || number.to_s == "exit"
			break
		end	
	end
end

old_roman_numeral