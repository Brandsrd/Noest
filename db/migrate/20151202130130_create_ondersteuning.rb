class CreateOndersteuning < ActiveRecord::Migration
  def change
    create_table :ondersteuning do |t|
      t.string :datum
      t.string :tijdstip_aanvang
      t.string :tijdstip_vertrek

      t.timestamps null: false
    end
  end
end
