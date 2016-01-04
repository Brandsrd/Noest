class CreateMantelzorgers < ActiveRecord::Migration
  def change
    create_table :mantelzorgers do |t|
      t.string :voornaam
      t.string :achternaam
      t.string :email
      t.string :password
      t.text :adres
      t.references :senior, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
