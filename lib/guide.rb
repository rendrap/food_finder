require 'restaurant'   
class Guide

	class Config
		@@actions = ['list','find','add', 'quit']
		def self.actions; @@actions; end  
	end

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
  
	def launch!
		introduction
		# action loop
		result = nil
		until result == :quit 
			action = get_action
			result = do_action(action)
		# what do you want to do? (list, find, add, quit)
		# do that action
		# repeat until user quits
		end
		conclusion
	end
 
	def get_action
		action = nil
	# Keep asking for user input until we get a valid action
		# check wether user input (action) match Config.actions list
		until Guide::Config.actions.include?(action)
			puts "Actions: " + Guide::Config.actions.join(",  ") if action
			print "> "
			user_response = gets.chomp
			action = user_response.downcase.strip
		end
		return action  
	end
 
 		def do_action(action)
			case action
			when 'list'
				puts "Listing..."
			when 'find'
				puts 'Finding...'
			when 'add'
				add
			when 'quit'
			return :quit
			else
			puts "\n I don't understand that command.\n"
			end
		end

		def add
			puts "\n Add a restaurant\n\n".upcase
			
			restaurant = Restaurant.build_using_question

			if restaurant.save
				puts "\nRestaurant Added\n\n"
			else
				puts "\nSave error - Restaurant not added\n\n"
			end
		end

		def introduction
			puts "\n\n<< Welcome to the food finder >>>\n\n"
			puts "this is interactive guide to help you find the food you crave.\n\n"
		end

		def conclusion
			puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
		end

end
