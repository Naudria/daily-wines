#CLI Controller
class DailyWines::CLI

	def call
		t = Time.now()
		puts ""
		puts t.strftime("-------------- %m/%d/%y --------------")
		puts ""
		puts "-- Welcome! Today's Wine Picks Are: --"
		puts ""
		list_wines
		menu
	end

	
	def list_wines
		DailyWines::Scraper.new.make_wines
		DailyWines::Wine.all.each_with_index do |wine, i|
			puts "#{i+1}. #{wine.name}"
		end
	end

	def menu
		input = nil
		while input != "exit"
			puts "Enter the wine you'd like more info on by its number or type exit."
			input = gets.strip.downcase

			if input.to_i > 0
				the_wine = DailyWines::Wine.all[input.to_i-1]
				puts ""
				puts "#{the_wine.name} - #{the_wine.price}"
				puts ""
				puts "#{the_wine.description}"
			elsif input == "exit"
				goodbye
			else
				puts "Not sure what that means. Enter the wine you'd like more info on by its number or type exit."
			end
		end
	end

		def goodbye
			puts "Cheers and have a great day!"
			exit 
		end



end
