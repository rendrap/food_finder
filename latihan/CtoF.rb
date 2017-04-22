print "enter celcius : " 
celcius = gets.to_i
fahrenheit = (celcius * 9 / 5) + 32
puts "Fahrenheit = #{fahrenheit}"
puts "Saving result to file 'temp.txt'"
text = []
File.open("temp.txt","a") do |line|
	text << line.puts("#{celcius} celcius is #{fahrenheit} fahrenheit \n")
end
# fh.close