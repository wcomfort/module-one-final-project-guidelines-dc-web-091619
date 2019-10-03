require_relative "../config/environment.rb"

describe "#welcome" do
  it "prints a welcome message to screen" do
    expect($stdout).to receive(:puts).with("Welcome to Doc on Ya Blocc!".red)
    welcome
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



