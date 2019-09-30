require "pry"

class Reviews < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    attr_reader :rating, :content, :patient_id, :doctor_id

    def initialize 
        @rating = rating
        @content = content
        @patient_id = patient_id
        @doctor_id = doctor_id
    end

    def longest_review

    end

    def avg_review_rating_by_specialty

    end

end