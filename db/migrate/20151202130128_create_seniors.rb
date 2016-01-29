class CreateSeniors < ActiveRecord::Migration
  def change
    create_table :seniors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address

      t.timestamps null: false
    end
  end
end
