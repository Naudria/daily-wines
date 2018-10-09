#CLI Controller
class DailyWines::CLI

	t = Time.now()

	def call
		list_wines
		menu
		goodbye
	end

	def list_wines
		puts t.strftime("%m/%d/%y")
		puts "Today's Wine Picks Are:"
		@wines = DailyWines::Wines.picks 
		@wines.each.with.index(1) do |deal, i|
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
