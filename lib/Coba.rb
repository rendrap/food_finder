APP_ROOT = File.dirname(__FILE__)
# ==> "."
$:.unshift(File.join(APP_ROOT,'lib'))
# ==> ["./lib", "D:/Ruby21-x64/lib/ruby/gems/2.1.0/gems/wirble-0.1.3/lib", "D:/Ruby21-x64/lib/ruby/site_ruby/2.1.0", "D:/Ruby21-x64/lib/ruby/site_ruby/2.1.0/x64-msvcrt", "D:/Ruby21-x64/lib/ruby/site_ruby", "D:/Ruby21-x64/lib/ruby/vendor_ruby/2.1.0", "D:/Ruby21-x64/lib/ruby/vendor_ruby/2.1.0/x64-msvcrt", "D:/Ruby21-x64/lib/ruby/vendor_ruby", "D:/Ruby21-x64/lib/ruby/2.1.0", "D:/Ruby21-x64/lib/ruby/2.1.0/x64-mingw32"]
require '.\restaurant'   
# ==> true
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
# ==> :initialize

aku = Coba.new('resto.txt')
# =Created restaurant file.
# ==> #<Coba:0x00000002e83f08>
p aku
# =#<Coba:0x00000002e83f08>
# ==> #<Coba:0x00000002e83f08>
puts "#{aku}"
# =#<Coba:0x00000002e83f08>
# ==> nil
