require_relative '../../config/environment.rb'

def welcome
    puts "Welcome to Doc on Ya Blocc!".red
end

def get_input
    puts "Would you like to search for Doctors or write/edit reviews?".green
    input = gets.chomp
    if input.downcase == 'doctors' 
        search_doctors
    elsif input.downcase == 'review'
        review_methods
    else 
        puts "Please enter 'Doctors' or 'Review'.".red
        get_input
    end
end





def search_doctors
    puts "Would you like to search for a specialty or your Doctors?".green
    input = gets.chomp
    if input.downcase == 'specialty'
        search_specialty
    elsif input.downcase == 'my doctors'
        puts "Please enter your Patient ID.".red
        input = gets.chomp 
        puts "Here are your Doctors.".red
        if Patient.docs_seen(input) == 0
            ask_whats_next
        else
            show_doc_info
        end
    else
        puts "Please enter 'specialty' or 'my doctors'.".cyan
        search_doctors
    end
end

def search_specialty
    puts "What Specialty would you like to search for?".green
    specialties = Doctor.doctors_specialties
    $input = gets.chomp.downcase
    if specialties.include?($input)
        puts "Here are all of the #{$input.capitalize} Doctors!".red
        name_arr = Doctor.sort_by_specialty($input).map(&:name).uniq
        name_arr.each {|name| puts " - #{name}".yellow}
        search_by_attributes
    else
        puts "Specialty not available. Please enter a valid Specialty.".cyan
        search_specialty
    end
end

def search_by_attributes
    puts "How would to search: Rating, Gender, Experience or ZIPcode?".green
    user_input = gets.chomp.downcase
    if user_input == 'rating'
        search_rating
    elsif user_input == 'gender'
        search_gender 
    elsif user_input == 'experience'
        search_experience
    elsif user_input == 'zipcode' || user_input == 'zip'
        puts "Plase enter your zicode, we will find doctors near you!".red
        $zip_input = gets.chomp.to_i
        search_zip($zip_input)
    else
        puts "Please enter a valid search term.".cyan
        search_by_attributes
    end
end

def search_rating
    Doctor.rating($input)
    show_doc_info
end

def search_gender
  puts  "What gender Doctor would you like to see?".green
    input = gets.chomp.downcase
    if input == 'male' || input == 'm'
        Doctor.male($input)
    else input == 'female' || input == 'f'
        Doctor.female($input)
    end
    show_doc_info
end

def search_experience 
    Doctor.experience($input)
    show_doc_info
end

def search_zip(zip_input)
    if Doctor.doc_near_zip(zip_input) != 0
    show_doc_info
    else ask_whats_next
    end
end




def review_methods
    puts "Would you like to 1.View/edit the reviews you have written, 2.Write a new review.".green
    review_input = gets.chomp.to_i
    if review_input == 1
        puts "Please enter your patient ID.".red
        p_id = gets.chomp.to_i
        Patient.my_review(p_id)
        option_edit_review
    elsif review_input == 2
        write_review
    else puts "Please enter the option number as 1 or 2.".cyan
        review_methods
    end
end

def option_edit_review
    puts "Would you like to edit any review? Y/N".green
    answer = gets.chomp.downcase
    if answer == "y" || answer == "yes"
        puts "Please enter the ID of the review you want to edit.".red
        id = gets.chomp.to_i
        Patient.edit_review(id)
        ask_whats_next
    elsif answer == "n" || answer == "no"
        ask_whats_next
    else puts "Please answer Yes or No.".cyan
        option_edit_review
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

def show_doc_info
    puts "Please choose a doctor who you want to see the information.".red
    doc_name = gets.chomp.downcase
    info = Doctor.print_doc_info(doc_name)
    if info != 0
    ask_whats_next
    else show_doc_info
    end
end

def ask_whats_next
    puts "What would you like to do next? 1.Search new doctor, 2.Write/edit a review, 3.Exit the search".green
    input = gets.chomp.downcase
    if input == "1" || input == "search new doctor"
        search_doctors
    elsif input == "2" || input == "write/edit a review"
        review_methods
    elsif input == "3" || input == "exit the search"
        exit_search
    else puts "Please enter a valid response.".cyan
        ask_whats_next
    end
end

def exit_search
    exit!
end


