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
        Review.find_or_create_by(args)
    end

    def num_of_reviews
        self.reviews.count 
    end

    def self.sort_most_reviews
        Patient.all.sort_by{|patient| patient.num_of_reviews}.reverse
    end

    def self.docs_seen(id)
        reviews = Review.where(patient_id: id)
        if reviews.length == 0
            puts "You have not seen any doctors yet.".light_red
            return 0
        else 
        dr_id = reviews.map {|review| review.doctor_id}.uniq
        dr_id.each {|id| Doctor.id_name_match(id)}
        end
    end

    def self.rating_constraint(rating)
        if rating > 10
            10
        elsif rating < 1
            1
        else rating 
        end
    end

    def self.edit_review(id)
        prompt = TTY::Prompt.new
        input = prompt.select("\nDo you want to edit the rating, content or both?\n".green, 
            ["Rating", "Content", "Both", "Exit"])
            edit = Review.find(id)
            if input == "Rating"
                Patient.update_rating(edit)
            elsif input == "Content"
                Patient.update_content(edit)
            elsif input == "Both"
                puts "Please update your rating from 1-10".red
                rating = gets.chomp.to_i
                rating = rating_constraint(rating)
                edit.update(rating: rating)
                puts "Please update your review content.".red
                content = gets.chomp
                edit.update(content: content)
                edit.save
                ask_whats_next
            else input == "Exit"
                ask_whats_next
            end
    end

    def self.update_rating(edit)
        puts "Please update your rating from 1-10".red
        rating = gets.chomp.to_i
        rating = rating_constraint(rating)
        edit.update(rating: rating)
        edit.save
        puts "Thank you for updating your review!".red
        ask_whats_next
    end

    def self.update_content(edit)
        puts "Please update your review content.".red
        content = gets.chomp
        edit.update(content: content)
        edit.save
        puts "Thank you for updating your review!".red
        ask_whats_next
    end

    def self.my_review(user_id)
        revs = Review.where(patient_id: user_id)
        if revs.length != 0
            revs.map do |rev|
                puts " - Review id: #{rev.id}, Doctor: #{Doctor.find(rev.doctor_id).name}, Rating: #{rev.rating}, Content: #{rev.content}".yellow
            end
        else puts "You dont have any reviews yet.".light_red
            ask_whats_next
        end
        revs
    end

end
