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

    def sort_most_reviews

    end
end
# pa = Patient.find(3)
# a.create_review(rating: 7, content: "hi", patient_id: 3, doctor_id: 5)
