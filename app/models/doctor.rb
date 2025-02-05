require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
  
    def self.doctors_specialties
        arr = Doctor.all.map(&:specialty).uniq
        array = arr.map{|spe| spe.downcase}
        array
    end

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
            return 0
        end
    end
    
    def self.rating(specialty_input)
        docs = Doctor.sort_by_specialty(specialty_input)
        sorted_doc = docs.sort_by{|doctor| doctor.ave_rating_of_doctor}.reverse
        mess = sorted_doc.map do |doc| 
                if doc.ave_rating_of_doctor > 0
                   " - #{doc.name} has a average rating of #{doc.ave_rating_of_doctor}.".blue
                else " - #{doc.name} has no ratings.".light_red
               end
            end
        puts mess
    end

    def self.male(specialty_input)
        m = Doctor.sort_by_specialty(specialty_input)
        name = m.select{|doctor| doctor.gender == "Male"}.map(&:name).uniq
        name.map {|name| puts " - #{name}".light_blue}
    end

    def self.female(specialty_input)
        f = Doctor.sort_by_specialty(specialty_input)
        name = f.select{|doctor| doctor.gender == "Female"}.map(&:name).uniq
        name.map {|name| puts " - #{name}".light_magenta}
    end

    def self.experience(specialty_input) #specialized docs over that experience year
        docs = Doctor.sort_by_specialty(specialty_input)
        sorted = docs.sort_by{|doctor| doctor.experience}.reverse
        puts sorted.map{|doctor| " - #{doctor.name} has #{doctor.experience} years of experience".blue}
    end

    # def self.highest_rating
    #     Review.order(rating: :desc).first.doctor
    # end

    # def self.sort_most_experienced
    #     Doctor.order(experience: :desc).first
    # end

    def self.id_name_match(doctor_id)
        doc = Doctor.find(doctor_id)
        puts " - #{doc.name}, specialty is #{doc.specialty}".blue
    end

    def self.doc_near_zip(specialty_input, zip_input)
        docs = Doctor.sort_by_specialty(specialty_input)
        ziped_docs = docs.select do |doc|
            doc.zip >= (zip_input - 5) && doc.zip <= (zip_input + 5)
        end 
        
        if ziped_docs.length > 0
            message = ziped_docs.map {|doc| " - #{doc.name} is at ZIP code #{doc.zip}".blue}
            puts message
        else 
            puts "There are no doctors near you.".light_red
            return 0
        end
    end
    
    def self.print_doc_info(doc_name)
        name_cap = doc_name.split.map{|name| name.capitalize}.join(" ")
        doc = Doctor.find_by(name: name_cap)
        if doc
        puts " - #{doc.name} is #{doc.gender} and has specialty of #{doc.specialty}, experience of #{doc.experience} years,
         average rating of #{doc.ave_rating_of_doctor} and is located in ZIP code #{doc.zip}.".blue
        else puts "Please enter a valid doctor's name.".red
            return 0
        end
    end
end