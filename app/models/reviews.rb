require "pry"

class Review < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def review_length
        self.content.split(//).length
    end

    def self.longest_review
        Review.all.sort_by{|review| review.review_length}.reverse.first
    end

    def avg_review_rating_by_specialty

    end

end