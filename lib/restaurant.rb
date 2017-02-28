class Restaurant
	@@filepath = nil
	def self.filepath=(path=nil)
		# join ROOT and path
		@@filepath = File.join(APP_ROOT, path)
	end

	attr_accessor :name, :cuisine, :price

	def self.file_exist?
		# class should know if resturant file exist
		if @@filepath && File.exist?(@@filepath)
			return true
		else
			return false 
		end
	end

	def self.file_usable?
		return false unless @@filepath
		return false unless File.exist?(@@filepath)
		return false unless File.readable?(@@filepath)
		return false unless File.writable?(@@filepath)
		return true
	end

	def self.create_file
		# create the restaurant file
		File.open(@@filepath,'w') unless file_exist?
		return file_usable?
	end

	def self.saved_restaurant
		# read the restaurant file
		# return instances of restaurant
	end
	
	def save
		return false unless Restaurant.file_usable?
		File.open(@@filepath, 'a') do |file|
			file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
		end
	end

end