class DailyWines::Wine
#Each wine instance needs a name attribute, a category attribute, and a price attribute
#attr_accessor is a method that tells the class to create setter and getter methods for each attribute
	attr_accessor :name, :price, :description
#Class variable that collects all the wine instances and puts it into an array

	 @@all = []

  def self.all #class reader to expose @@all class variable. A custom constructor that wraps .new and saves all
  	#wine instances
    @@all
  end

  def initialize 
    @@all << self
  end

end
