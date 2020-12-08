require 'pry'
class Dogs::CLI   

    def call
        list_dogs
        menu
    end

    def list_dogs
        puts "List of Dogs!"
        @dogs = Dog::DogBio.all
        @dogs.each.with_index(1) do |dog, i|
        puts "#{i}. #{dog.breed}"
    end
end
    
    def list_bios 
        puts "All Dog Bios"
        @dogs = Dog::DogScraper.list 
        @dogs.each.with_index(1) do |dog, i|
        puts "#{i}. #{dog.breed}, #{dog.bio}"
     end
end
    
    def shepherd_bio
        puts "German Shepherd Bio"
        @dogs = Dog::DogScraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 1
                puts "#{dog.bio}"
        end
    end
end   

    def rottweiler
        puts "Rottweiler Bio"
        @dogs = Dog::DogScraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 2
                puts "#{dog.bio}"
        end        
    end
end

    def rottweiler
        puts "Great Dane Bio"
        @dogs = Dog::DogScraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 3
                puts "#{dog.bio}"
         end
    end
end

    def goodbye
        puts "Thanks for stopping by... More Dogs to arrive soon!"
end

    
def menu
            input = nil
        while input != "exit"
            puts "Enter the Dog you`d like more info on:"
            input = gets.chomp.downcase

        if input.to_i > 0
            dog = @dogs[input.to_i-1]
            puts "#{dog.breed}"
        elsif input.downcase == "German shepherd"
            shepherd_bio
        elsif input.downcase == "Rottweiler"
            rottweiler_bio
        elsif input.downcase == "Great Dane"
            dane_bio
        elsif input.downcase == "bio"
            list_bios
        elsif input.downcase == "list"
            list_dogs
        elsif input.downcase == "exit"
            goodbye
        else
            puts "Huh? I don`t understand. Please type 'list' to see the list of Dogs again."
        end
    end
end