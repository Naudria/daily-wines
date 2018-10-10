class DailyWines::Wines
#Each wine instance needs a name attribute, a category attribute, and a price attribute
#attr_accessor is a method that tells the class to create setter and getter methods for each attribute
	attr_accessor :name, :category, :price
#Class variable that collects all the wine instances and puts it into an array
	@@all = []

	def self.picks
		self.scrape_wines
	end

	def self.scrape_picks
		wines = []

		wines << self.scrape_wines

		wines 
	end

	def initialize(name=nil, category=nil, price=nil) #-->the initialize method accepts arguments that it passes to each instance; nil is the default
#The Initialize method sets instance variables; happens automatically on every object and doesn't need to be called
#Instance variables use the @ sign and store attributes, which are values that persist inside of an instance
		@name = name
		@category = category
		@price = price
		@@all << self
	end
#A class method is a method that can be called on a class itself, even without an instance of the class.
#Class attributes store values called class variables (with two @@ signs) that apply to the class generally even without instances
	def self.all
		@@all 
	end


#Build a class method scrape_wines that returns instances of the wines based on the data scraped
	def self.scrape_wines
		doc = Nokogiri::HTML(open("https://www.winespectator.com/dailypicks"))

		wine = self.new
		wine.name = doc.search("h5 a").text.strip
		
		wine
	end

end

