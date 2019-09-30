class CreateDoctors < ActiveRecord::Migration[5.2]
    def change
        create_table :doctors do |t|
        t.string :name
        t.string :gender
        t.string :specialty
        t.integer :experience
        end 
    end
end