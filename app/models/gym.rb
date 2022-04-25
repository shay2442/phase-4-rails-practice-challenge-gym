

class Gym < ApplicationRecord
    has_many :memberships
    has_many :clients, through: :memberships

    def self.most_clients
      self.all.sort_by{ |gym| gym.clients.length}

    end


  def self.summary
    "#{name}: $#{price}"
  end
   
    def self.find_gym
  gym = self.find do |g|
    g[:name] == "shay's gym"
  end
end

def self.each_method
  each = self.all.each do |g|
  g[:name]
  end
end


    def self.get_gyms 
     
        gym = self.all.collect do |g|
            g[:name]
        end
    end

    validates :name, presence: true
end
