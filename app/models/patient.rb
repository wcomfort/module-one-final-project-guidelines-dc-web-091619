require "pry"

class Patient < ActiveRecord::Base
    has_many :reviews
    has_many :doctors, through: :reviews

    def create_review(args)
       if rating > 10 
        rating = 10
       elsif rating < 1
        rating = 1
       else rating = rating 
       end
        Review.create(args)
    end

    def num_of_reviews
        self.reviews.count 
    end

    def self.sort_most_reviews
        Patient.all.sort_by{|patient| patient.num_of_reviews}.reverse
    end
end
