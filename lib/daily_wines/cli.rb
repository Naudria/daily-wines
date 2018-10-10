#CLI Controller
class DailyWines::CLI


	def call
		list_wines
		menu
		goodbye
	end

	def list_wines
		t = Time.now()
		puts ""
		puts t.strftime("-------------- %m/%d/%y --------------")
		puts ""
		puts "-- Welcome! Today's Wine Picks Are: --"
		puts ""
		@wines = DailyWines::Wines.picks
		@wines.each.with.index(1) do |wine, i|
			puts "#{i}. #{wine.name} - #{wine.category}"
		end
	end

	def menu
		input = nil
		while input != "exit"
			puts "Enter the wine you'd like more info on by its number or type exit."
			input = gets.strip.downcase

			if input.to_i > 0
				the_wine = @wines[input.to_i-1]
				puts "#{the_wine.name} - #{the_wine.category}"
				puts ""
				puts "#{the_wine.price}"
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
