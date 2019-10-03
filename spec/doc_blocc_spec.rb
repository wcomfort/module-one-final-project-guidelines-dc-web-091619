require_relative '../config/environment.rb'

describe "#welcome" do
    it 'puts out a welcome message in the terminal' do
        expect($stdout).to receive(:puts).with("Welcome to Doc on Ya Blocc!".red)
        welcome
    end
end

describe "Patient" do 

    before do 
        @patient = Patient.new(name: "Will Comfort", gender: "Male")
        @review = @patient.create_review(rating: 8, content: "good", patient_id: @patient.id, doctor_id: 2)
    end

    describe 'Patient.my_review(@patient.id)' do
        it 'returns strings of the users reviews' do 
            expect(Patient.my_review(@patient.id)).to include(@review)
            Patient.my_review(@patient.id)
        end
    end

end
# def self.my_review(user_id)
#     revs = Review.where(patient_id: user_id)
#     if revs.length != 0
#         revs.map do |rev|
#             puts " - Review id: #{rev.id}, Doctor: #{Doctor.find(rev.doctor_id).name}, Rating: #{rev.rating}, Content: #{rev.content}".yellow
#         end
#     else puts "You dont have any reviews yet.".cyan
#         ask_whats_next
#     end
# end