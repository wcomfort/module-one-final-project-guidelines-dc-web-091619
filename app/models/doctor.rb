require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
  
    # wrote method this wasy becuase the user input and data retrieved 
    # from the db should be both in downcase. Other than that, could have been
    # Doctor.where(specialty: "specialty_input")
    def self.sort_by_specialty(specialty_input)
        docs = []
        Doctor.all.each do |doctor|
            if doctor[:specialty].downcase == specialty_input.downcase
                docs << doctor
            else false
            end
        end
        docs
    end

    def self.highest_rating
        Review.order(rating: :desc).first.doctor
    end

    def self.sort_most_experienced
        Doctor.order(experience: :desc).first
    end
    
end