require "pry"

class Review < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def longest_review

    end

    def avg_review_rating_by_specialty

    end

end