require "faker"
Patient.destroy_all
Review.destroy_all

# Alexandria Hospital
Doctor.find_or_create_by(name: "Ramsey Falconer", gender: "Male", specialty: "Neurology", experience: 9, zip: 20010)
Doctor.find_or_create_by(name: "Edward Chang", gender: "Male", specialty: "Sports Medicine", experience: 10, zip: 20010)
Doctor.find_or_create_by(name: "Alan Richey", gender: "Female", specialty: "Internal Medicine", experience: 36, zip: 20010)
Doctor.find_or_create_by(name: "Samrawit Berhanu", gender: "Female", specialty: "Obstetrics and Gynecology", experience: 9, zip:20010)
Doctor.find_or_create_by(name: "Maria Castillo-Catoni", gender: "Female", specialty: "Internal Medicine", experience: 11, zip: 20010)
Doctor.find_or_create_by(name: "January Dumlao-Umayam", gender: "Female", specialty: "Family Medicine", experience: 14, zip: 20010)
Doctor.find_or_create_by(name: "Pratima Fozdar", gender: "Male", specialty: "Internal Medicine", experience: 41, zip: 20010)
Doctor.find_or_create_by(name: "Daniele Nunez", gender: "Female", specialty: "Family Medicine", experience: 39, zip: 20010)
Doctor.find_or_create_by(name: "Leena Jha", gender: "Female", specialty: "Diabetes and Metabolism", experience: 18, zip: 20010)
Doctor.find_or_create_by(name: "Zee Chris", gender: "Male", specialty: "Internal Medicine", experience: 33, zip: 20010)
Doctor.find_or_create_by(name: "John Cochran", gender: "Male", specialty: "Neurology", experience: 46, zip: 20010)
Doctor.find_or_create_by(name: "Mark Theiss", gender: "Male", specialty: "Orthopaedic Surgery", experience: 44, zip: 20010)
Doctor.find_or_create_by(name: "Grace Potter", gender: "Female", specialty: "Neurology", experience: 25, zip: 20010)
Doctor.find_or_create_by(name: "Shaquille O'Neil", gender: "Male", specialty: "Sports Medicine", experience: 22, zip: 20010)
Doctor.find_or_create_by(name: "Gabby Villa", gender: "Female", specialty: "Internal Medicine", experience: 10, zip: 20010)
Doctor.find_or_create_by(name: "Tyler Kessler", gender: "Male", specialty: "Urology", experience: 15, zip: 20010)
Doctor.find_or_create_by(name: "Jawn Browning", gender: "Male", specialty: "Sports Medicine", experience: 30, zip: 20010)


# Farifax Hospital
Doctor.find_or_create_by(name: "Lama Alsamara", gender: "Female", specialty: "Internal Medicine", experience: 22, zip: 20001)
Doctor.find_or_create_by(name: "Scott Vejcik", gender: "Male", specialty: "Family Medicine", experience: 15, zip: 20001)
Doctor.find_or_create_by(name: "Catherine Pipan", gender: "Female", specialty: "Family Medicine", experience: 28, zip: 20001)
Doctor.find_or_create_by(name: "Brett Holt", gender: "Male", specialty: "Urology", experience: 13, zip: 20001)
Doctor.find_or_create_by(name: "Ramie Tabbarah", gender: "Female", specialty: "Obstetrics and Gynecology", experience: 13, zip: 20001)
Doctor.find_or_create_by(name: "Aanchal Jain", gender: "Male", specialty: "Obstetrics and Gynecology", experience: 11, zip: 20001)
Doctor.find_or_create_by(name: "Daniel Nunez", gender: "Male", specialty: "Urology", experience: 15, zip: 20001)
Doctor.find_or_create_by(name: "Bee Chris", gender: "Male", specialty: "Internal Medicine", experience: 8, zip: 20001)
Doctor.find_or_create_by(name: "Ken Jeong", gender: "Male", specialty: "Psychology", experience: 18, zip: 20001)
Doctor.find_or_create_by(name: "Bret Cochran", gender: "Male", specialty: "Neurology", experience: 46, zip: 20001)
Doctor.find_or_create_by(name: "Peter MacArthur", gender: "Male", specialty: "Family Medicine", experience: 8, zip: 20001)
Doctor.find_or_create_by(name: "Paulina Gorney Brown", gender: "Female", specialty: "Urology", experience: 9, zip: 20001)
Doctor.find_or_create_by(name: "Robert Plant", gender: "Male", specialty: "Neurology", experience: 44, zip: 20001)
Doctor.find_or_create_by(name: "Angus Young", gender: "Male", specialty: "Orthopaedic Surgery", experience: 23, zip: 20001)
Doctor.find_or_create_by(name: "Morgan Freeman", gender: "Male", specialty: "Internal Medicine", experience: 60, zip: 20001)
Doctor.find_or_create_by(name: "Caite Zeliff", gender: "Female", specialty: "Sports Medicine", experience: 14, zip: 20001)
Doctor.find_or_create_by(name: "Hadley Hammer", gender: "Female", specialty: "Orthopaedic Surgery", experience: 4, zip: 20001)



# Loudoun Hospital
Doctor.find_or_create_by(name: "Kim Freeman", gender: "Female", specialty: "Obstetrics and Gynecology", experience: 22, zip: 20025)
Doctor.find_or_create_by(name: "Michele Justice", gender: "Female", specialty: "Obstetrics and Gynecology", experience: 11, zip: 20025)
Doctor.find_or_create_by(name: "Sahana Hundal", gender: "Female", specialty: "Diabetes and Metabolism", experience: 9, zip: 20025)
Doctor.find_or_create_by(name: "Stephen Malekzadeh", gender: "Male", specialty: "Orthopaedic Surgery", experience: 20, zip: 20025)
Doctor.find_or_create_by(name: "Amish Gandhi", gender: "Male", specialty: "Diabetes and Metabolism", experience: 15, zip: 20025)
Doctor.find_or_create_by(name: "Christopher Connolly", gender: "Male", specialty: "Internal Medicine", experience: 23, zip: 20025)
Doctor.find_or_create_by(name: "Scotty Veil", gender: "Male", specialty: "Family Medicine", experience: 10, zip: 20025)
Doctor.find_or_create_by(name: "Peter Grifin", gender: "Male", specialty: "Family Medicine", experience: 1, zip: 20025)
Doctor.find_or_create_by(name: "Dee Chris", gender: "Male", specialty: "Internal Medicine", experience: 2, zip: 20025)
Doctor.find_or_create_by(name: "Cate Pipe", gender: "Female", specialty: "Family Medicine", experience: 20, zip: 20025)
Doctor.find_or_create_by(name: "Ramsey Bolton", gender: "Male", specialty: "Neurology", experience: 9, zip: 20025)
Doctor.find_or_create_by(name: "Lami Tabbarah", gender: "Female", specialty: "Obstetrics and Gynecology", experience: 18, zip: 20025)
Doctor.find_or_create_by(name: "Travis Rice", gender: "Male", specialty: "Sports Medicine", experience: 8, zip: 20025)
Doctor.find_or_create_by(name: "Lindsey Vonn", gender: "Female", specialty: "Orthopaedic Surgery", experience: 5, zip: 20025)
Doctor.find_or_create_by(name: "Margo Jain", gender: "Female", specialty: "Orthopaedic Surgery", experience: 14, zip: 20025)
Doctor.find_or_create_by(name: "Bob Smith", gender: "Male", specialty: "Diabetes and Metabolism", experience: 44, zip: 20025)
Doctor.find_or_create_by(name: "Tommy Caldwell", gender: "Male", specialty: "Sports Medicine", experience: 20, zip: 20025)


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
