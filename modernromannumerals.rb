def modern_roman_numeral
	while true
	puts "What number do you want to convert?"
	print "> "
	number = gets.chomp.to_i

		m = number / 1000
		print "M" * m
		m_rem = number % 1000
		if m_rem >= 900
			print "CM"
		else
			d = m_rem / 500
			print "D" * d
		end	
		d_rem = number % 500
		if d_rem >= 400 && d_rem < 500 && m_rem < 900
			print "CD"
		elsif d_rem < 400
			c = d_rem / 100
			print "C" * c
		end
		c_rem = number % 100
		if c_rem >= 90
			print "XC"
		else
			l = c_rem / 50
			print "L" * l
		end
		l_rem = number % 50
		if l_rem >= 40 && l_rem < 50 && c_rem < 90
			print "XL"
		elsif l_rem < 40
			x = l_rem / 10
			print "X" * x
		end
		x_rem = number % 10
		if x_rem >= 9
			print "IX"
		else
			v = x_rem / 5
			print "V" * v
		end
		v_rem = number % 5
		if v_rem >= 4 && v_rem < 5 && x_rem < 9
			print "IV"
		elsif v_rem < 4
			i = v_rem / 1
			print "I" * i
		end
		puts
		if number == 0 || number.to_s == "exit"
			break
		end	
	end
end

modern_roman_numeral