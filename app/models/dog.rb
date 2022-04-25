class Dog < ApplicationRecord
    attr_accessor :name
    def self.good
        self.name + "is a good dog!"

    end

    


   
end

# atticus = Dog.new
# atticus.name = "Atticus"
