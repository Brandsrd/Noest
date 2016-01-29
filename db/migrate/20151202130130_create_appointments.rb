class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time_start
      t.string :time_end
      t.references :senior, index: true
      t.references :home_assistant, index: true
      t.timestamps null: false
    end
  end
end
