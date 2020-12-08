require 'nokogiri'
require 'open-uri'

class Dog::DogScraper
    attr_accessor :breed, :bio
  
    def self.list
      scrape_dogs
    end
  
    def self.scrape_dogs
      dogs = []
  
      dogs << self.scrape_shepherd
      dogs << self.scrape_rottweiler
      dogs << self.scrape_dane
      dogs
    end
      def self.scrape_shepherd
      doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/german-shepherd-dog"))
  
      breed = doc.search("h1").text
      bio = doc.search("section.mainContent p").text
  
      Dog::DogBio.new(breed, bio)
    end
  
  
    def self.scrape_rottweiler
      doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/rottweiler"))
  
      breed = doc.search("h1").text
      bio = doc.search("section.mainContent p").text
  
      Dog::DogBio.new(breed, bio)
  
    end
  
    def self.scrape_dane
      doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/great-dane"))
  
      breed = doc.search("h1").text
      bio = doc.search("section.mainContent p").text
  
      Dog::DogBio.new(breed, bio)
    end
  
  end