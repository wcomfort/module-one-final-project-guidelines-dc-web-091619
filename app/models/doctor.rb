require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
  
    def self.doctors_specialties
        arr = Doctor.all.map(&:specialty).uniq
        arr.map{|spe| spe.downcase}
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
        else 
            # puts "There is no rating for the doctor #{self.name}."
            return 0
        end
    end
    
    # def self.rating(specialty_input)
    #     docs = Doctor.sort_by_specialty(specialty_input)
    #     sorted_doc = docs.sort_by{|doctor| doctor.ave_rating_of_doctor}.reverse
    #     puts sorted_doc.map{|doc| "#{doc.name} has a average rating of #{doc.ave_rating_of_doctor}"}\
    # end

    def self.rating(specialty_input)
        docs = Doctor.sort_by_specialty(specialty_input)
        sorted_doc = docs.sort_by{|doctor| doctor.ave_rating_of_doctor}.reverse
        mess = sorted_doc.map do |doc| 
                if doc.ave_rating_of_doctor > 0
                   "#{doc.name} has a average rating of #{doc.ave_rating_of_doctor}."
                else "#{doc.name} has no ratings."
                end
               end
        puts mess

    end

    def self.male(specialty_input)
        m = Doctor.sort_by_specialty(specialty_input)
        puts m.select{|doctor| doctor.gender == "M"}.map(&:name)  
    end

    def self.female(specialty_input)
        f = Doctor.sort_by_specialty(specialty_input)
        puts f.select{|doctor| doctor.gender == "F"}.map(&:name)
    end

    def self.experience(specialty_input) #specialized docs over that experience year
        docs = Doctor.sort_by_specialty(specialty_input)
        sorted = docs.sort_by{|doctor| doctor.experience}.reverse
        puts sorted.map{|doctor| "#{doctor.name} has #{doctor.experience} years of experience"}
    end

    def self.highest_rating
        Review.order(rating: :desc).first.doctor
    end

    def self.sort_most_experienced
        Doctor.order(experience: :desc).first
    end

    def self.id_name_match(doctor_id)
       puts Doctor.find(doctor_id).name 
    end
    
end