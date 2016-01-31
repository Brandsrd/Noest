class CreateHomeAssistants < ActiveRecord::Migration
  def change
    create_table :home_assistants do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :address
      t.string :telephone_number
      t.string :drivers_license
      t.string :passport
      t.string :chamber_of_commerce_number
      t.string :certifications
      t.string :specialties
      t.string :availability

      t.timestamps null: false
    end
  end
end
