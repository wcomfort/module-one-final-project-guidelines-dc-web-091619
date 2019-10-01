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

    def self.avg_review_rating_by_specialty(specialty_input)
        revs = []
        Review.all.each do |review|
            if review.doctor[:specialty].downcase == specialty_input.downcase
                revs << review
            else false
            end
        end
        revs
    end

end