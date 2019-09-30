class CreateReviews < ActiveRecord::Migration[5.2]
    def change
        create_table :reviews do |t|
        t.integer :rating
        t.string :content
        t.integer :patient_id
        t.integer :doctor_id
        end 
    end
end