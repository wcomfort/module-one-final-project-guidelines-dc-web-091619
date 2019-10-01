require "faker"
Patient.destroy_all
Review.destroy_all

# Alexandria Hospital
Doctor.find_or_create_by(name: "Ramsey Falconer", gender: "M", specialty: "Neurology", experience: 9)
Doctor.find_or_create_by(name: "Edward Chang", gender: "M", specialty: "Sports Medicine", experience: 10)
Doctor.find_or_create_by(name: "Alan Richey", gender: "F", specialty: "Internal Medicine", experience: 36)
Doctor.find_or_create_by(name: "Samrawit Berhanu", gender: "F", specialty: "Obstetrics and Gynecology", experience: 9)
Doctor.find_or_create_by(name: "Maria Castillo-Catoni", gender: "F", specialty: "Internal Medicine", experience: 11)
Doctor.find_or_create_by(name: "January Dumlao-Umayam", gender: "F", specialty: "Family Medicine", experience: 14)
Doctor.find_or_create_by(name: "Pratima Fozdar", gender: "M", specialty: "Internal Medicine", experience: 41)
Doctor.find_or_create_by(name: "Daniele Nunez", gender: "F", specialty: "Family Medicine", experience: 39)
Doctor.find_or_create_by(name: "Leena Jha", gender: "F", specialty: "Diabetes and Metabolism", experience: 18)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33)
Doctor.find_or_create_by(name: "John Cochran", gender: "M", specialty: "Neurology", experience: 46)
Doctor.find_or_create_by(name: "Mark Theiss", gender: "M", specialty: "Orthopaedic Surgery", experience: 44)


# Farifax Hospital
Doctor.find_or_create_by(name: "Lama Alsamara", gender: "F", specialty: "Internal Medicine", experience: 22)
Doctor.find_or_create_by(name: "Scott Vejcik", gender: "M", specialty: "Family Medicine", experience: 15)
Doctor.find_or_create_by(name: "Catherine Pipan", gender: "F", specialty: "Family Medicine", experience: 28)
Doctor.find_or_create_by(name: "Brett Holt", gender: "M", specialty: "Urology", experience: 13)
Doctor.find_or_create_by(name: "Rami Tabbarah", gender: "F", specialty: "Obstetrics and Gynecology", experience: 13)
Doctor.find_or_create_by(name: "Aanchal Jain", gender: "M", specialty: "Aanchal Jain", experience: 11)
Doctor.find_or_create_by(name: "Daniele Nunez", gender: "M", specialty: "Family Medicine", experience: 39)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33)
Doctor.find_or_create_by(name: "Edward Chang", gender: "M", specialty: "Sports Medicine", experience: 10)
Doctor.find_or_create_by(name: "John Cochran", gender: "M", specialty: "Neurology", experience: 46)
Doctor.find_or_create_by(name: "Peter MacArthur", gender: "M", specialty: "Family Medicine", experience: 8)
Doctor.find_or_create_by(name: "Paulina Gorney Brown", gender: "F", specialty: "Urology", experience: 9)

# Loudoun Hospital
Doctor.find_or_create_by(name: "Kim Freeman", gender: "F", specialty: "Obstetrics and Gynecology", experience: 22)
Doctor.find_or_create_by(name: "Michele Justice", gender: "F", specialty: "Obstetrics and Gynecology", experience: 11)
Doctor.find_or_create_by(name: "Sahana Hundal", gender: "F", specialty: "Diabetes and Metabolism", experience: 9)
Doctor.find_or_create_by(name: "Stephen Malekzadeh", gender: "M", specialty: "Orthopaedic Surgery", experience: 20)
Doctor.find_or_create_by(name: "Amish Gandhi", gender: "M", specialty: "Diabetes and Metabolism", experience: 15)
Doctor.find_or_create_by(name: "Christopher Connolly", gender: "M", specialty: "Internal Medicine", experience: 23)
Doctor.find_or_create_by(name: "Scott Vejcik", gender: "M", specialty: "Family Medicine", experience: 15)
Doctor.find_or_create_by(name: "Peter MacArthur", gender: "M", specialty: "Family Medicine", experience: 8)
Doctor.find_or_create_by(name: "Z Chris", gender: "M", specialty: "Internal Medicine", experience: 33)
Doctor.find_or_create_by(name: "Catherine Pipan", gender: "F", specialty: "Family Medicine", experience: 28)
Doctor.find_or_create_by(name: "Ramsey Falconer", gender: "M", specialty: "Neurology", experience: 9)
Doctor.find_or_create_by(name: "Rami Tabbarah", gender: "F", specialty: "Obstetrics and Gynecology", experience: 13)


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
