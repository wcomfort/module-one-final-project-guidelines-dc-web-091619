require_relative '../../config/environment.rb'

def welcome
    puts "Welcome to Doc on ya Blocc"
end

def get_input
    puts "Would you like to search for Doctors or write a review?"
    input = gets.chomp
    if input.downcase == 'doctors' 
        seearch_by_attributes
    elsif input.downcase == 'review'
        write_review
    else 
        puts "Please enter 'Doctors' or 'Review'." 
    end
end

def seearch_by_attributes
    puts "How would to search: Specialty, Gender or Experience?"
    user_input = gets.chomp
end

def search_specialty
    puts "What Specialty would you like to search for?"
end

def search_gender
    "What gender Doctor would you like to see?"
end

def search_experience 
    "What is the minimum amount of experience in years you want your Doctor to have?"
end

def write_review
    puts "Thank you for writing a review!"
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
    what_else
end

def what_else
    puts "Would you like to do something else?"
    get_input 
end


