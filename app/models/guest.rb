class Guest
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{|trip| trip.Guest == self}
    end

    def listings
        trips.map{|trip| trip.listings}
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        self.all.select{|guest| guest.trip_count > 1}
    end

    def find_all_by_name(name)
        self.all.find_all{|gust| gust.name == name}
    end
end
