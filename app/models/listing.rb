class Listing
    @@all = []

    attr_reader :city 

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips # start with this method to use it in the rest of methods
        #call Trip class to select the match between 
        Trip.all.select{|trip| trip.listing == self}
    end

    def guests #returns an array of all guests who have stayed at a listing
        trips.map{|trip| trip.guest}
    end

    def trip_count
        trips.count 
    end

    def self.find_all_by_city(city)
        self.all.select{ |listing| listing.city == self}
    end

    def self.most_popular
        self.all.max_by{|listing| listing.trip_count}
    end
end