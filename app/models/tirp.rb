class Trip
    @@all = []

    attr_reader :listing, :guest, :name

    def initialize(name, quest,listing)
        # @name = name
        @listing = listing
        @quest = quest
        @@all << self
    end

    def self.all
        @all
    end

end