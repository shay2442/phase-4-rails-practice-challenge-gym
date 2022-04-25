class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  def self.cheap
    cheap = self.select do |m|
      m[:charge] < 50
    end  
  end

  def self.total_cost_of_memberships
    total = self.sum do |m|
      m[:charge]
    end
  end

  def self.most_expensive
   total = self.all.max do |m|
      m[:charge]
    end
  end

 

  def self.do_dishes dishes
    unless dishes == "clean"
      "run dishwasher"
    else 
      "don't run dishwasher"
      
    end
  end

  def self.to_do day
    if day == "Monday"
      "Pick up dry claening"
    elsif day == "Friday"
      "Take Atticus to the vet" 
    else 
      "Clean house"
     end
  end

  def self.to_do_week day
    case day
    when "Monday"
      "Pick up cleaning"
    when "Tuesday"
      "Buy groceries"
    when "Wednesday"
      "Do lunch with friends"
    else
      "Party!"
    end
  end
 
  validates :name, presence: true
  # validates :client, uniqueness: true {scope: :gym}
end
