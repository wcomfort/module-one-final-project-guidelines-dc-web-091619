require "pry"

class Patient < ActiveRecord::Base
    has_many :reviews
    has_many :doctors, through: :reviews

    # attr_accessor :name, :gender
    
    # def initialize(name, gender)
    #     @name = name
    #     @gender = gender
    # end

    def create_review

    end

    def sort_most_reviews

    end
end
