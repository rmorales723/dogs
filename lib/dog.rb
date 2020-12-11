 require_relative '../config/environment'
 require_relative '../lib/cli'

class Dog
attr_accessor :name, :breed, :bio, :img, :size, :height, :weight, :coat, :energy, :activities
@@all = []

    def self.all
        @@all
end
    def initialize(breed, bio, img, size, height, weight, coat, energy, activities)
        @name = name 
        @breed = breed
        @bio = bio
        @img = img
        @size = size
        @height = height
        @weight = weight
        @coat = coat
        @energy = energy
        @activities = activities
        @@all << self
    end
end