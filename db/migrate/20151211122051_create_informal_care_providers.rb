class CreateInformalCareProviders < ActiveRecord::Migration
  def change
    create_table :informal_care_providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.text :adress
      t.references :senior, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end