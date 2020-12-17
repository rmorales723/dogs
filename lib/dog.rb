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
        puts "#{self.breed}"
        puts "#{self.size}"
        puts "#{self.height}"
        puts "#{self.weight}"
        puts "#{self.coat}"
        puts "#{self.energy}"
        puts "#{self.activities}"
    end

    def self.display_grid_of_breeds
        dogs_table = TTY::Table.new(header: ["Id", "Breed"])
        all.each.with_index(1) do |dog, i| 
            dogs_table << ["#{i}".red, "#{dog.breed}"]
        end
        puts dogs_table.render(:unicode)
    end

    #def self.dog_breed
        #dogs_table = TTY::Table.new(header: ["Id", "Breed"])
        #all.each.with_index(1) do |dog, i|
        #dogs_table << ["#{i}".red, "#{self.table}"]
       # end
    #end
end
