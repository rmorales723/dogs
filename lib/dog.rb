class Dog
attr_accessor :dog, :breed, :bio, :dog
@@all = []

def initialize(breed, name, bio, dog)
    @breed = breed
    @name = name
    @bio = bio
    @dog = dog
    @@all = all
end

def all
    @@all << self
end

def self.list
    self.scrape_dogs
    dogs = []
    dogs << self.scrape_shepherd
    dogs << self.scrape_rottweiler
    dogs << self.scrape_dane
    dogs
end

def bark
    puts "RUFF! RUFF!"
    end

def display
    puts "I am of #{@breed} breed!"
    end
end