require "pry"

class Doctor < ActiveRecord::Base
    has_many :reviews
    has_many :patients, through: :reviews

    # attr_accessor :name, :gender, :specialty, :experience

    # def initialize
    #     @name = name
    #     @gender = gender
    #     @specialty = specialty
    #     @experience = experience
    # end

    def sort_highest_rating

    end

    def sort_most_experienced

    end

    def sort_by_specialty

    end
    
end