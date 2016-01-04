class CreateSeniors < ActiveRecord::Migration
  def change
    create_table :seniors do |t|
      t.string :naam
      t.string :achternaam

      t.timestamps null: false
    end
  end
end
