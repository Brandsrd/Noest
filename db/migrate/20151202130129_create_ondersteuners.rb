class CreateOndersteuners < ActiveRecord::Migration
  def change
    create_table :ondersteuners do |t|
      t.string :naam
      t.string :achternaam
      t.string :geboortedatum
      t.string :adres
      t.string :telefoonnummer
      t.string :rijbewijs
      t.string :paspoort
      t.string :kvk
      t.string :diploma
      t.string :specialiteit
      t.string :beschikbaarheid

      t.timestamps null: false
    end
  end
end
