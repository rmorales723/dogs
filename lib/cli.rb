require 'pry'
require_relative '../config/environment'



class CLI

    def call
        puts ""
		puts "*|*----------------------------------------*|*"
		puts "             *** List of Dogs! *** 		    "
        puts "*|*----------------------------------------*|*"
        Scraper.scrape_dogs
        list_dogs
        menu
    end

    def list_dogs
        @dogs = Dog.all
        @dogs.each.with_index(1) do |dog, i|
            puts "#{i}. #{dog.breed}"
        end
    end
    
    def list_bios 
        puts "All Dog Bios"
        @dogs = Scraper.list 
        @dogs.each.with_index(1) do |dog, i|
            puts "#{i}. #{dog.breed}, #{dog.bio}"
        end
    end
    
    def shepherd_bio
        puts "German Shepherd Bio"
        @dogs = Scraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 1
                puts "#{dog.bio}"
            end
        end
    end   

    def rottweiler_bio
        puts "Rottweiler Bio"
        @dogs = Scraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 2
                puts "#{dog.bio}"
            end        
        end
    end

    def dane_bio
        puts "Great Dane Bio"
        @dogs = Scraper.list 
        @dogs.select.with_index(1) do |dog, i|
            if i == 3
                puts "#{dog.bio}"
            end
        end
    end

    def goodbye
        puts "Thanks for stopping by... More Dogs to come soon!"
    end

    
    def menu
        input = nil
        while input != "exit"
            puts "Enter the Dog you`d like more info on:"
            input = gets.chomp.downcase

            if input.to_i > 0
                dog = @dogs[input.to_i-1]
                puts "#{dog.breed}"
                puts "#{dog.size}" #{dog.height}, #{dog.weight}, #{dog.coat}, #{dog.energy}, #{dog.activities}"
                puts
            
            
            
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
                puts "I don`t understand. Please type 'list' to see the list of Dogs again."
            end
        end
    end

    def goodbye 
        puts ""
            puts "*|*----------------------------------------*|*"
            puts " 	        Thanks for stopping by!			    "
            puts "*|*----------------------------------------*|*"
            puts ""
            puts "                         	"
            puts "        ,-~~~~-,         	"
            puts "  .-~~~;        ;~~~-.   	"
            puts " /    /          \    \  	"
            puts "{   .'{  O    O  }'.   } 	"
            puts " `~`  { .-~~~~-. }  `~`  	"
            puts "      ;/        \;       	"
            puts "     /'._  ()  _.'\      	"
            puts "    /    `~~~~`    \     	"
            puts "   ;                ;    	"
            puts "   {                }    	"
            puts "   {     }    {     }    	"
            puts "   {     }    {     }    	"
            puts "   /     \    /     \    	"
            puts "  { { {   }~~{   } } }   	"
            puts "   `~~~~~`    `~~~~~`    	"
            puts ""
            exit
    end
end