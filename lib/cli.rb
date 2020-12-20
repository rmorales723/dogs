require 'pry'
require_relative '../config/environment'



class CLI
    def call
        puts ""
		puts "*|*----------------------------------------*|*"
		puts "                 *** List of Dogs! *** 		    "
        puts "*|*----------------------------------------*|*"
        Scraper.scrape_dogs
        Dog.display_grid_of_breeds
        menu
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
            puts "Enter the Dog you`d like more info on, or type 'List' to see the list of Dogs again. Enter 'Exit' to leave the app."
            input = gets.chomp.downcase
            if input.to_i > 0 && input.to_i < Dog.all.length
                dog = Dog.all[input.to_i-1]
                Scraper.scrape_breed(dog)
                dog.display_data
            elsif input.downcase == "list"
                Dog.String.display_grid_of_breeds
            elsif input.downcase == "exit"
                goodbye
            else   
                puts "I don`t understand." 
            end
        end
    end
end