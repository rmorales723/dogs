class Dog::DogBio
attr_accessor :breed, :bio, :url
@@all = []

    def initialize(breed,bio, url)
        @breed = breed
        @bio = bio
        @@all = all
        @url = url
        @@all << self
    end

    def self.list
        @@all
    end


    #def
        #self.scrape_dogs
        #dogs = []
        #dogs << self.scrape_shepherd
        #dogs << self.scrape_rottweiler
        #dogs << self.scrape_dane
        #dogs
    #end
end