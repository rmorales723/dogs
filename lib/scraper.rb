class Scraper
URL = "https://www.purina.com/dogs/dog-breeds"     
    

        def self.scrape_dogs
            doc = Nokogiri::HTML(open(URL))
            dogs = doc.css("#breed-listing > div.views-view-grid > div > article")
            dogs.each do |dog|
            name = dog.css("div.callout-label > h4").text
            url = dog.css("div.callout-bd > a").attr("href").value
            Dog.new(name, url)
            end
        end
      
        def self.scrape_breed(dog)
            doc = Nokogiri::HTML(open("https://www.purina.com/dogs/dog-breeds/#{dog.breed.downcase.gsub(" ", "-")}"))
            breed = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dt").text.strip.gsub(/\s+/,' ')
            bio = doc.search("#mainContent > div.layer.mix-bkgColor_light.layer_collapseTop > div > div > p").text.strip.gsub(/\s+/,' ')  
            img = doc.search("#mainContent > div > div > div > div.statsDef-media > img").text.strip.gsub(/\s+/,' ') 
            size = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(2)").text.strip.gsub(/\s+/,' ')
            height = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(3)").text.strip.gsub(/\s+/,' ')
            weight = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(4)").text.strip.gsub(/\s+/,' ')
            coat = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(5)").text.strip.gsub(/\s+/,' ')
            energy = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(6)").text.strip.gsub(/\s+/,' ')
            activities = doc.search("#mainContent > div > div > div > div.statsDef-content > dl > dd:nth-child(7)").text.strip.gsub(/\s+/,' ')
            dog.bio = bio
            dog.img = img
            dog.size = size
            dog.height = height
            dog.weight = weight
            dog.coat = coat
            dog.energy = energy
            dog.activities = activities
        
        end
    end