#!/usr/bin/env ruby
require 'pry'
class Dogs::CLI


def call
    list_dogs
    menu
end

def list_dogs
    puts "Welcome to Dog_Breeds, a tool to learn more about a particular Breed of Dog that you might be interested in."
    puts "I hope you find a Dog that you might be interested in!"
    puts "List of Dogs"
    @dogs = Dogs::DogBreed.list
    @dogs.each.with_index(1) do |dog, i|
    puts "#{i}. #{dog.breed}"
    end

def menu
    input = nil
    while input != "exit"
    puts "Type 'List' to see a list of Dogs." "Type 'Breed' to list a particular breed of dog you`d like to see." "If you`d like to exit please type 'Exit'."
    input = gets.chomp.downcase
binding.pry
    if input.to_i > 0
    x = @dogs[input.to_i-1]
    puts "#{x.breed}"
    elsif input.downcase == "list"
    list_breed
    elsif input.downcase == "breed"
    list_dogs
    elsif input.downcase == "exit"
    goodbye
    binding.pry
    else
    puts "Invalid input." "Type 'List' to see the list of Dogs again!"
        end
    end
end