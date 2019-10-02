require "pry"

class Patient < ActiveRecord::Base
    has_many :reviews
    has_many :doctors, through: :reviews

    def create_review(args)
        if args[:rating] > 10
            args[:rating] = 10
        elsif args[:rating] < 1
            args[:rating] = 1
        else args[:rating] = args[:rating]
        end
        Review.find_or_create_by(args)
    end

    def num_of_reviews
        self.reviews.count 
    end

    def self.sort_most_reviews
        Patient.all.sort_by{|patient| patient.num_of_reviews}.reverse
    end

    def self.docs_seen(id)
        reviews = Review.where(patient_id: id)
        if reviews.length == 0
            puts "You have not seen any doctors yet."
            return 0
        else 
        dr_id = reviews.map {|review| review.doctor_id}.uniq
        dr_id.each {|id| Doctor.id_name_match(id)}
        end
    end

    def self.rating_constraint(rating)
        if rating > 10
            10
        elsif rating < 1
            1
        else rating 
        end
    end

    def self.edit_review(id)
        puts "Do you want to edit the 1.rating, 2.content or 3.both? To exit, enter 4"
        option = gets.chomp.to_i
        edit = Review.find(id)
        if option == 1 || option == 3
            puts "Please update your rating from 1-10"
            rating = gets.chomp.to_i
            rating = rating_constraint(rating)
            edit.update(rating: rating)
            edit.save
            Patient.edit_review(id)
        end
        if option == 2 || option == 3
            puts "Please update your review content."
            content = gets.chomp
            edit.update(content: content)
            edit.save
            Patient.edit_review(id)
        end 
        if option == 4
            ask_whats_next
        end
    end

    def self.my_review(user_id)
        revs = Review.where(patient_id: user_id)
        if revs.length != 0
            revs.map do |rev|
                puts " - Review id: #{rev.id}, Doctor: #{Doctor.find(rev.doctor_id).name}, Rating: #{rev.rating}, Content: #{rev.content}}"
            end
        else puts "You dont have any reviews yet."
            ask_whats_next
        end
    end

end
