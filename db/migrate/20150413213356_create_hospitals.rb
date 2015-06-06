class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.integer :city_id
      t.string :address
      t.string :phone_number
      t.string :fax
      t.string :web_site
      t.string :e_mail

      t.timestamps null: false
    end
  end
end
