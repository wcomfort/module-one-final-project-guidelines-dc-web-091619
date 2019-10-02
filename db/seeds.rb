require "faker"
Patient.destroy_all
Review.destroy_all

# Alexandria Hospital
Doctor.find_or_create_by(name: "Ramsey Falconer", gender: "M", specialty: "Neurology", experience: 9, zip: 20010)
Doctor.find_or_create_by(name: "Edward Chang", gender: "M", specialty: "Sports Medicine", experience: 10, zip: 20010)
Doctor.find_or_create_by(name: "Alan Richey", gender: "F", specialty: "Internal Medicine", experience: 36, zip: 20010)
Doctor.find_or_create_by(name: "Samrawit Berhanu", gender: "F", specialty: "Obstetrics and Gynecology", experience: 9, zip:20010)
Doctor.find_or_create_by(name: "Maria Castillo-Catoni", gender: "F", specialty: "Internal Medicine", experience: 11, zip: 20010)
Doctor.find_or_create_by(name: "January Dumlao-Umayam", gender: "F", specialty: "Family Medicine", experience: 14, zip: 20010)
Doctor.find_or_create_by(name: "Pratima Fozdar", gender: "M", specialty: "Internal Medicine", experience: 41, zip: 20010)
Doctor.find_or_create_by(name: "Daniele Nunez", gender: "F", specialty: "Family Medicine", experience: 39, zip: 20010)
Doctor.find_or_create_by(name: "Leena Jha", gender: "F", specialty: "Diabetes and Metabolism", experience: 18, zip: 20010)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33, zip: 20010)
Doctor.find_or_create_by(name: "John Cochran", gender: "M", specialty: "Neurology", experience: 46, zip: 20010)
Doctor.find_or_create_by(name: "Mark Theiss", gender: "M", specialty: "Orthopaedic Surgery", experience: 44, zip: 20010)
Doctor.find_or_create_by(name: "Grace Potter", gender: "F", specialty: "Neurology", experience: 25, zip: 20010)
Doctor.find_or_create_by(name: "Shaquille O'Neil", gender: "M", specialty: "Sports Medicine", experience: 22, zip: 20010)
Doctor.find_or_create_by(name: "Gabby Villa", gender: "F", specialty: "Internal Medicine", experience: 10, zip: 20010)
Doctor.find_or_create_by(name: "Tyler Kessler", gender: "M", specialty: "Urology", experience: 15, zip: 20010)
Doctor.find_or_create_by(name: "Jawn Browning", gender: "M", specialty: "Sports Medicine", experience: 30, zip: 20010)


# Farifax Hospital
Doctor.find_or_create_by(name: "Lama Alsamara", gender: "F", specialty: "Internal Medicine", experience: 22, zip: 20001)
Doctor.find_or_create_by(name: "Scott Vejcik", gender: "M", specialty: "Family Medicine", experience: 15, zip: 20001)
Doctor.find_or_create_by(name: "Catherine Pipan", gender: "F", specialty: "Family Medicine", experience: 28, zip: 20001)
Doctor.find_or_create_by(name: "Brett Holt", gender: "M", specialty: "Urology", experience: 13, zip: 20001)
Doctor.find_or_create_by(name: "Rami Tabbarah", gender: "F", specialty: "Obstetrics and Gynecology", experience: 13, zip: 20001)
Doctor.find_or_create_by(name: "Aanchal Jain", gender: "M", specialty: "Obstetrics and Gynecology", experience: 11, zip: 20001)
Doctor.find_or_create_by(name: "Daniel Nunez", gender: "M", specialty: "Urology", experience: 15, zip: 20001)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33, zip: 20001)
Doctor.find_or_create_by(name: "Edward Chang", gender: "M", specialty: "Sports Medicine", experience: 10, zip: 20001)
Doctor.find_or_create_by(name: "John Cochran", gender: "M", specialty: "Neurology", experience: 46, zip: 20001)
Doctor.find_or_create_by(name: "Peter MacArthur", gender: "M", specialty: "Family Medicine", experience: 8, zip: 20001)
Doctor.find_or_create_by(name: "Paulina Gorney Brown", gender: "F", specialty: "Urology", experience: 9, zip: 20001)
Doctor.find_or_create_by(name: "Robert Plant", gender: "M", specialty: "Neurology", experience: 44, zip: 20001)
Doctor.find_or_create_by(name: "Angus Young", gender: "M", specialty: "Orthopaedic Surgery", experience: 23, zip: 20001)
Doctor.find_or_create_by(name: "Morgan Freeman", gender: "M", specialty: "Internal Medicine", experience: 60, zip: 20001)
Doctor.find_or_create_by(name: "Caite Zeliff", gender: "F", specialty: "Sports Medicine", experience: 14, zip: 20001)
Doctor.find_or_create_by(name: "Hadley Hammer", gender: "F", specialty: "Orthopaedic Surgery", experience: 4, zip: 20001)



# Loudoun Hospital
Doctor.find_or_create_by(name: "Kim Freeman", gender: "F", specialty: "Obstetrics and Gynecology", experience: 22, zip: 20025)
Doctor.find_or_create_by(name: "Michele Justice", gender: "F", specialty: "Obstetrics and Gynecology", experience: 11, zip: 20025)
Doctor.find_or_create_by(name: "Sahana Hundal", gender: "F", specialty: "Diabetes and Metabolism", experience: 9, zip: 20025)
Doctor.find_or_create_by(name: "Stephen Malekzadeh", gender: "M", specialty: "Orthopaedic Surgery", experience: 20, zip: 20025)
Doctor.find_or_create_by(name: "Amish Gandhi", gender: "M", specialty: "Diabetes and Metabolism", experience: 15, zip: 20025)
Doctor.find_or_create_by(name: "Christopher Connolly", gender: "M", specialty: "Internal Medicine", experience: 23, zip: 20025)
Doctor.find_or_create_by(name: "Scott Vejcik", gender: "M", specialty: "Family Medicine", experience: 15, zip: 20025)
Doctor.find_or_create_by(name: "Peter MacArthur", gender: "M", specialty: "Family Medicine", experience: 8, zip: 20025)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33, zip: 20025)
Doctor.find_or_create_by(name: "Catherine Pipan", gender: "F", specialty: "Family Medicine", experience: 28, zip: 20025)
Doctor.find_or_create_by(name: "Ramsey Falconer", gender: "M", specialty: "Neurology", experience: 9, zip: 20025)
Doctor.find_or_create_by(name: "Rami Tabbarah", gender: "F", specialty: "Obstetrics and Gynecology", experience: 13, zip: 20025)
Doctor.find_or_create_by(name: "Travis Rice", gender: "M", specialty: "Sports Medicine", experience: 8, zip: 20025)
Doctor.find_or_create_by(name: "Lindsey Vonn", gender: "F", specialty: "Orthopaedic Surgery", experience: 5, zip: 20025)
Doctor.find_or_create_by(name: "Margo Jain", gender: "F", specialty: "Orthopaedic Surgery", experience: 14, zip: 20025)
Doctor.find_or_create_by(name: "Bob Smith", gender: "M", specialty: "Diabetes and Metabolism", experience: 44, zip: 20025)
Doctor.find_or_create_by(name: "Tommy Caldwell", gender: "M", specialty: "Sports Medicine", experience: 20, zip: 20025)


36.times do 
    Patient.create([{
    name: Faker::Name.name,
    gender: Faker::Gender.binary_type
    }])
    end
    
    
36.times do 
    Review.create([{
    rating: Faker::Number.within(range: 1..10),
    content: Faker::String.random(length: 15..45),
    patient_id: Patient.all.ids.sample,
    doctor_id: Doctor.all.ids.sample
    }])
end
