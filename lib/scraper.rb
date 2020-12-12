require 'pry'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'pry'
require_relative '../config/environment'
class Scraper
        
        def self.scrape_dogs
            self.scrape_shepherd
            self.scrape_rottweiler
            self.scrape_dane
        end

      
         def self.scrape_breeds(dog_breeds)
             f_url = "https://www.purina.com"+dog_breeds.url
             doc = Nokogiri::HTML(open(f_url))
             dog_breeds.bio = doc.search("head > link:nth-child(42)").text.strip
         end
      
     
        def self.scrape_shepherd
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/german-shepherd-dog"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt").text.strip.gsub(/\s+/,' ')
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p:nth-child(1)").text.strip.gsub(/\s+/,' ')  
            img = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip.gsub(/\s+/,' ') 
            size = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip.gsub(/\s+/,' ')
            height = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip.gsub(/\s+/,' ')
            weight = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip.gsub(/\s+/,' ')
            coat = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip.gsub(/\s+/,' ')
            energy = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip.gsub(/\s+/,' ')
            activities = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip.gsub(/\s+/,' ')
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
        end
  
        def self.scrape_rottweiler
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/rottweiler"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt").text.strip.gsub(/\s+/,' ')
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p:nth-child(1)").text.strip.gsub(/\s+/,' ')
            img =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip.gsub(/\s+/,' ')
            size =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip.gsub(/\s+/,' ')
            height =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip.gsub(/\s+/,' ')
            weight =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip.gsub(/\s+/,' ')
            coat =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip.gsub(/\s+/,' ')
            energy =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip.gsub(/\s+/,' ')
            activities =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip.gsub(/\s+/,' ')
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
  
        end
  
        def self.scrape_dane
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/great-dane"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt > h1").text.strip.gsub(/\s+/,' ')
            bio = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2) > div.statsDef-content-list-item-value").text.strip.gsub(/\s+/,' ')
            img =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip.gsub(/\s+/,' ')
            size =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip.gsub(/\s+/,' ')
            height =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip.gsub(/\s+/,' ')
            weight =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip.gsub(/\s+/,' ')
            coat =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip.gsub(/\s+/,' ')
            energy =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip.gsub(/\s+/,' ')
            activities =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip.gsub(/\s+/,' ')
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
    end
end