APP_ROOT = File.dirname(__FILE__)
# # $:.unshift(File.join(APP_ROOT,'lib'))
# $:.unshift(File.join(APP_ROOT,'lib'))
# 	require "./lib/restaurant"
# class Wo
	
def import_line(line)
	line_array = line.split("\t")
	nama; cuisine; price = line_array
	return self
end
# ==> :import_line

# end
ok =[]
# ==> []
phrase = ok.import_line("sate\tmasakan madura\t9\t")
# =NoMethodError: private method `import_line' called for []:Array
# =	from (irb):15
# =	from D:/Ruby21-x64/bin/irb:11:in `<main>'
rest = Wo.new.import_line("sate\tmasakan madura\t9\t")
# =NameError: uninitialized constant Wo
# =	from (irb):16
# =	from D:/Ruby21-x64/bin/irb:11:in `<main>'

p rest
puts "#{rest}"

@name
@cuisine
@price


# line = ("sate\t masakan madura\t 9\t")
# # ==> "sate\t masakan madura\t 9\t"
# line_array = line.split("\t")
# # ==> ["sate", " masakan madura", " 9"]
# @name, @cuisine, @price = line_array
# # ==> ["sate", " masakan madura", " 9"]
