class DailyWines::Scraper
	#Build a class method scrape_wines that returns instances of the wines based on the data scraped

	def get_wine_index
		Nokogiri::HTML(open("https://www.winespectator.com/dailypicks"))
	end

	def scrape_wines
		self.get_wine_index.css(".mod-container:contains('span')")
		# self.get_wine_index.css(".mod-container:not(.clearfix)").first(3)
	end


	def make_wines
		scrape_wines.each do |content|
			wine = DailyWines::Wine.new
			wine.name = content.css("h5 a").text
			wine.price = content.css("h6").text
			wine.description = content.css(".paragraph").text.strip
		end

	end

end