require "pry"

class Patient < ActiveRecord::Base
    has_many :reviews
    has_many :doctors, through: :reviews

    attr_reader :name
    
    def initialize
        @name = name
    end

    def create_review

    end

    def sort_most_reviews

    end
end
