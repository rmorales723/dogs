class Dog
attr_accessor :breed, :url, :bio, :img, :size, :height, :weight, :coat, :energy, :activities
@@all = []

    def self.all
        @@all
end
    def initialize(breed, url, bio = nil, img = nil, size = nil, height = nil, weight = nil, coat = nil , energy = nil, activities = nil)
        self.breed = breed
        self.url = url
        self.bio = bio
        self.img = img
        self.size = size
        self.height = height
        self.weight = weight
        self.coat = coat
        self.energy = energy
        self.activities = activities
        self.class.all << self
    end

    def display_data
        puts "#{self.breed.red}"
        puts "#{self.size.white}"
        puts "#{self.height.white}"
        puts "#{self.weight.white}"
        puts "#{self.coat.white}"
        puts "#{self.energy.white}"
        puts "#{self.activities.white}"
    end

    def self.display_grid_of_breeds
        dogs_table = TTY::Table.new(header: ["Id", "Breed"])
        all.each.with_index(1) do |dog, i| 
            dogs_table << ["#{i}".red, "#{dog.breed}"]
        end
        puts dogs_table.render(:unicode)
    end

    #write class method find_by_name that takes 1 arguemnt of breed we want to find, and returns the breed we found if we found it or nil if nothing was found.
    def self.class_find_by_name(breed)
        self.all.find do |dog|
             dog.breed == breed 
        end
    end
end