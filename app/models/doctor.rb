require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
  
    def self.doctors_specialties
        Doctor.all.map(&:specialty).uniq
    end

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

    def ave_rating_of_doctor
        rating_array = Review.where(doctor_id: self.id).map(&:rating)
        if rating_array.length > 0
            rating_array.sum / rating_array.length
        else puts "There is no rating for the doctor."
        end
    end
    
    def self.rating(specialty_input, rating_input) #specialized docs over that rating
        docs = Doctor.sort_by_specialty(specialty_input)
        docs.where
    end

    def self.male(specialty_input)
        m = Doctor.sort_by_specialty(specialty_input)
        puts m.select{|doctor| doctor.gender == "M"}.map(&:name)  
    end

    def self.female(specialty_input)
        f = Doctor.sort_by_specialty(specialty_input)
        puts f.select{|doctor| doctor.gender == "F"}.map(&:name)
    end

    def self.experience(specialty_input, experience_input) #specialized docs over that experience year

    end

    def self.sort_by_experience(specialty_input)
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