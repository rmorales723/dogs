require 'pry'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'pry'
class Scraper


        #def self.scrape_index(open(url))
            #dog_breeds = []
            #doc = Nokogiri::HTML(open(open(url))
            #breeds = doc.css(".list-item .list-item-title")
		    #breeds.each do |b|
			#breed = {}
			#breed[:name] = b.text
		    #breed[:page_url] = b.attr("href")
			#dog_breeds << breed
		    #end
		    #dog_breeds
	#end
            #dog_bio.bio = doc.search("section.mainContent p").text
          #end
    
        #def self.scrape_dogs
            #doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds"))
            #dogs = doc.search("div.blocks div.callout")
            #dogs.each do |dog|
            #breed = dog.search("span.callout-label").text
            #url = dog.search("a.link").attr("href").value
            #Dog::DogBio.new(breed, url)
            #end
        #end
        
        def self.scrape_dogs
            self.scrape_shepherd
            self.scrape_rottweiler
            self.scrape_dane
        end

      
        # def self.scrape_breeds(dog_breeds)
        #     f_url = "https://www.purina.com"+dog_breeds.url
        #     doc = Nokogiri::HTML(open(f_url))
        #     dog_breeds.bio = doc.search("head > link:nth-child(42)").text.strip
        #     binding.pry
        # end
      
     
        def self.scrape_shepherd
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/german-shepherd-dog"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt").text.strip
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p:nth-child(1)").text.strip
            img = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip
            size = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip 
            height = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip
            weight = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip
            coat = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip
            energy = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip
            activities = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
        end
  
        def self.scrape_rottweiler
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/rottweiler"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt").text.strip
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p:nth-child(1)").text.strip
            img =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip
            size =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip
            height =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip
            weight =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip
            coat =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip
            energy =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip
            activities =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
  
        end
  
        def self.scrape_dane
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/great-dane"))
        
            breed = doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dt").text.strip
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p:nth-child(1)").text.strip
            img =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-media > img").text.strip
            size =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip
            height =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip
            weight =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip
            coat =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip
            energy =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip
            activities =doc.search("#mainContent > div:nth-child(2) > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip
            Dog.new(breed, bio, img, size, height, weight, coat, energy, activities)
    end
  
end