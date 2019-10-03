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


describe ".doctors_specialties" do

    it "returns all the specialties of doctors" do
        spes = Doctor.doctors_specialties
        expect((spes.length)).to eq(9)
    end

    it "prints out all the specialties of doctors" do
        spes = Doctor.doctors_specialties
        expect(spes).to include("diabetes and metabolism")
    end

end



