require_relative '../../config/environment.rb'

def welcome
    puts "Welcome to Doc on ya Blocc"
end

def get_input
    puts "Would you like to search for Doctors or write a review?"
    input = gets.chomp
    if input.downcase == 'doctors' 
        search_specialty
    elsif input.downcase == 'review'
        write_review
    else 
        puts "Please enter 'Doctors' or 'Review'." 
    end
end

def search_specialty
    puts "What Specialty would you like to search for?"
    $input = gets.chomp.downcase
    if Doctor.doctors_specialties.include?($input)
        puts "Here are all of the #{$input.capitalize} Doctors!"
        puts Doctor.sort_by_specialty($input).map(&:name)
        search_by_attributes
    else
        puts "Specialty not available. Please enter a valid Specialty."
        search_specialty
    end
end

def search_by_attributes
    puts "How would to search: Rating, Gender or Experience?"
    user_input = gets.chomp.downcase
    if user_input == 'rating'
        search_rating
    elsif user_input == 'gender'
        search_gender 
    elsif user_input == 'experience'
        search_experience
    else
        puts "Please enter a valid search term."
        search_by_attributes
    end
end

def search_rating
    Doctor.rating($input)
    ask_whats_next
end

def search_gender
  puts  "What gender Doctor would you like to see?"
    input = gets.chomp.downcase
    if input == 'male' || input == 'm'
        Doctor.male($input)
    else input == 'female' || input == 'f'
        Doctor.female($input)
    end
    ask_whats_next
end

def search_experience 
    Doctor.experience($input)
    ask_whats_next
end

def write_review
    puts "Start your review."
    puts "Please enter your ID."
    patient_id = gets.chomp.to_i
    puts "Please enter your Doctor's ID."
    doctor_id = gets.chomp.to_i
    puts "Please rate your experience from 1 to 10."
    rating = gets.chomp.to_i
    puts "Please enter a review for your Doctor."
    content = gets.chomp.to_s
    patient = Patient.find(patient_id)
    patient.create_review(rating: rating, content: content, patient_id: patient_id, doctor_id: doctor_id)
    puts "Thank you for writing a review!"
    ask_whats_next
end


def ask_whats_next
    puts "What would you like to do next? 1.Search new doctor, 2.Write a review, 3.Exit the search"
    input = gets.chomp.downcase
    if input == "1" || input == "search new doctor"
        search_specialty
    elsif input == "2" || input == "write a review"
        write_review
    elsif input == "3" || input == "exit the search"
        exit_search
    else puts "Please enter a valid response."
        ask_whats_next
    end
end

def exit_search
    exit!
end


