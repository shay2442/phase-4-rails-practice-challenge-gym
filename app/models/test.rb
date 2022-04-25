class Test < ApplicationRecord

    def good
        self.name + "is good"
       
    end

    def self.greeting(name, programming_language)
        puts "Hello, #{name}"
        puts "Welcome to the #{programming_language} curriculum"
      end
      
      greeting("Ruby", "Leroy Jenkins")
end
