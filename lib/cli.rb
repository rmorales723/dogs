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

def goodbye 
    puts ""
        puts "*|*----------------------------------------*|*"
        puts " 	      Thanks for stopping by!			    "
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

    def menu
        input = nil
        while input != "exit"
            puts "Enter the Dog you`d like more info on, or enter 'Exit' to leave the app."
            input = gets.chomp.downcase
            if input.to_i > 0 && input.to_i < 4
                dog = @dogs[input.to_i-1]
                puts "#{dog.breed}"
                puts "#{dog.size}"
                puts "#{dog.height}"
                puts "#{dog.weight}"
                puts "#{dog.coat}"
                puts "#{dog.energy}"
                puts "#{dog.activities}"
            
            elsif input.downcase == "list"
                list_dogs
            elsif input.downcase == "exit"
                goodbye
            else   puts "I don`t understand. Please type 'list' to see the list of Dogs again, and choose a dog from number 1-3."
            end
        end
    end
end