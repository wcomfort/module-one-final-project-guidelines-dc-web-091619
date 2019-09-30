require "pry"

class Review < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    # attr_accessor :rating, :content, :patient_id, :doctor_id

    # def initialize(rating, content, patient_id, doctor_id)
    #     @rating = rating
    #     @content = content
    #     @patient_id = patient_id
    #     @doctor_id = doctor_id
    # end

    def longest_review

    end

    def avg_review_rating_by_specialty

    end

end