class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :name
      t.string :shortname
      t.float :price

      t.timestamps null: false
    end
  end
end
