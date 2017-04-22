require 'restaurant'   
class Coba
	def initialize(path = nil)
		#locate the restaurant text file at path
		Restaurant.filepath = path
		if Restaurant.file_usable?
		# exit if create fails
			puts "Found restaurant file"
		# or create a new file
		elsif Restaurant.create_file
			puts "Created restaurant file."
		else
			puts "Exiting.\n\n"
			exit!
		end
	end 
end

aku = Coba.new('resto.txt')
p aku
puts "#{aku}"
