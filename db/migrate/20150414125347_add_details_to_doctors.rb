class AddDetailsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :pin, :integer
    add_column :doctors, :first_name, :string
    add_column :doctors, :last_name, :string
    add_column :doctors, :gender, :integer
    add_column :doctors, :dob, :date 
    add_column :doctors, :address, :string
    add_column :doctors, :marital_status, :integer 
    add_column :doctors, :profession, :string
    add_column :doctors, :phone, :string
    add_column :doctors, :mobile, :string
    add_column :doctors, :city_id, :integer
    add_column :doctors, :hospital_id, :integer
  end
end
