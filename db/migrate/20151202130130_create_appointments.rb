class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :datum
      t.string :tijdstip_aanvang
      t.string :tijdstip_vertrek
      t.references :senior, index: true
      t.references :ondersteuner, index: true
      t.timestamps null: false
    end
  end
end
