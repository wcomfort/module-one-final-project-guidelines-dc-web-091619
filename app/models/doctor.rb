require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
  
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