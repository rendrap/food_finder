namespace :admin do 
	desc "Interactive file delete"
	task :clean_tmp do 
		Dir["./tmp/*"].each do |f|
			puts "sebelum = #{f}"
			# next unless File.file? (f) || File.directory?(f)
			next unless File.file?(f)
			puts "sesudah #{f}"
			print "Delete #{f}?"
			answer = $stdin.gets
			case answer
			when /^y/
				File.unlink(f)
			when /^q/
				break()
			end
		end
	end
end	
