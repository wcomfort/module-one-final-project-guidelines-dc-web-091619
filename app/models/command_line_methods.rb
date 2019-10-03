require_relative '../../config/environment.rb'
require 'tty-prompt'

def welcome
    puts "Welcome to Doc on Ya Blocc!".red
end


def get_input
    prompt = TTY::Prompt.new
    input = prompt.select("Would you like to search for Doctors or write/edit reviews?".green, %w(Doctors Reviews))
    if input.downcase == 'doctors' 
        search_doctors
    else input.downcase == 'review'
        review_methods
    end
end


def search_doctors
    prompt = TTY::Prompt.new
    input = prompt.select("Would you like to search for a specialty or your Doctors?".green, ["Specialties", "My Doctors"])
    if input.downcase == 'specialties'
        search_specialty
    else input.downcase == 'my doctors'
        puts "Please enter your Patient ID.".red
        input = gets.chomp 
        puts "Here are your Doctors.".red
        if Patient.docs_seen(input) == 0
            ask_whats_next
        else
            show_doc_info
        end
    end
end


def search_specialty
    prompt = TTY::Prompt.new
    specialties = Doctor.doctors_specialties
    $input = prompt.select("What Specialty would you like to search for?".green, specialties, filter: true)
        puts "Here are all of the #{$input.capitalize} Doctors!".red
        name_arr = Doctor.sort_by_specialty($input).map(&:name).uniq
        name_arr.each {|name| puts " - #{name}".yellow}
        search_by_attributes
end


def search_by_attributes
    prompt = TTY::Prompt.new
    input = prompt.select("How would to search: Rating, Gender, Experience or ZIPcode?".green, ["Rating", "Gender", "Experience", "Zip Code"])
    if input == 'Rating'
        search_rating
    elsif input == 'Gender'
        search_gender 
    elsif input == 'Experience'
        search_experience
    else input == 'Zip Code' 
        puts "Plase enter your Zip Code, we will find doctors near you!".red
        $zip_input = gets.chomp.to_i
        search_zip($zip_input)
    end
end


def search_rating
    Doctor.rating($input)
    show_doc_info
end


def search_gender
    prompt = TTY::Prompt.new
    input = prompt.select("What gender Doctor would you like to see?".green, ["Male", "Female"])
    if input == "Male"
        Doctor.male($input)
    else input == "Female"
        Doctor.female($input)
    end
    show_doc_info
end


def search_experience 
    Doctor.experience($input)
    show_doc_info
end


def search_zip(zip_input)
    if Doctor.doc_near_zip($input, zip_input) != 0
    show_doc_info
    else ask_whats_next
    end
end


def review_methods
    prompt = TTY::Prompt.new
    input = prompt.select("Would you like to View/Edit the reviews you have written or write a new review.".green, 
    ["View/Edit reviews", "Write a review"])
    if input == "View/Edit reviews"
        puts "Please enter your patient ID.".red
        p_id = gets.chomp.to_i
        Patient.my_review(p_id)
        option_edit_review
    else input == "Write a review"
        write_review
    end
end


def option_edit_review
    prompt = TTY::Prompt.new
    input = prompt.select("Would you like to edit any review? Y/N".green, ["Yes", "No"])
    if input == "Yes"
        puts "Please enter the ID of the review you want to edit.".red
        id = gets.chomp.to_i
        Patient.edit_review(id)
        ask_whats_next
    else input == "No"
        ask_whats_next
    end
end
    

def write_review
    puts "Start your review.".red
    puts "Please enter your ID.".red
    patient_id = gets.chomp.to_i
    puts "Please enter your Doctor's ID.".red
    doctor_id = gets.chomp.to_i
    puts "Please rate your experience from 1 to 10.".red
    rating = gets.chomp.to_i
    puts "Please enter a review for your Doctor.".red
    content = gets.chomp
    patient = Patient.find(patient_id)
    new_review = patient.create_review(rating: rating, content: content, patient_id: patient_id, doctor_id: doctor_id)
    puts "New Review :
    'Patient ID : #{new_review.patient_id}'
    'Doctor ID : #{new_review.doctor_id}'
    'Rating : #{new_review.rating}'
    'Content : #{new_review.content}'".yellow
    puts "Thank you for writing a review!".red
    ask_whats_next
end
##############################################################################
def show_doc_info
    puts "Please enter the Doctor's name who you want to see the information.".red
    doc_name = gets.chomp.downcase
    info = Doctor.print_doc_info(doc_name)
    if info != 0
    ask_whats_next
    else show_doc_info
    end
end
#############################################################################
def ask_whats_next
    prompt = TTY::Prompt.new
    input = prompt.select("What would you like to do next? Search new doctor, Write/Edit a review, or Exit the search.".green, 
        ["Search new doctor", "Write/Edit a review", "Exit the search"])
    if input == "Search new doctor"
        search_doctors
    elsif input == "Write/Edit a review"
        review_methods
    else input == "Exit the search"
        exit_search
    end
end

def exit_search
    exit!
end


