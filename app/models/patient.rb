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
        Review.create(args)
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
        dr_id = reviews.map {|review| review.doctor_id}
        dr_id.each {|id| Doctor.id_name_match(id)}
        end
    end

    def rating_constraint(rating)
        if rating > 10
            10
        elsif rating < 1
            1
        else rating 
        end
    end

    def edit_review(id)
        my_review
        id = gets.chomp.to_i
        edit = Review.find(id)
        puts "Do you edit the rating, content or both?"
        option = gets.chomp.downcase
        if option == 'rating' || option == 'both'
            puts "Please update your rating from 1-10"
            rating = gets.chomp.to_i
            rating = rating_constraint(rating)
            edit.update(rating: rating)
            edit.save
        end
        if option == 'content' || option == 'both'
            puts "Please update your review content."
            content = gets.chomp
            edit.update(content: content)
            edit.save
        end 
    end

end
