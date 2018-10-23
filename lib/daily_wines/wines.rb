class DailyWines::Wine
#Each wine instance needs a name attribute, a category attribute, and a price attribute
#attr_accessor is a method that tells the class to create setter and getter methods for each attribute
	attr_accessor :name, :price, :description
#Class variable that collects all the wine instances and puts it into an array

	 @@all = []

  def self.all #class reader to expose @@all class variable
    @@all
  end

  def initialize #In #initialize we use the self keyword to refer to the new object that has just been created by #new. 
  	#We push self into the array that is stored in @@all. In this way, the @@all class variable will 
  	#point to an ever-growing array that contains every instance of the Song class that gets created.
    @@all << self
  end

end
