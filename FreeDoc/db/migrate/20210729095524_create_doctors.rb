class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code

      t.belongs_to :city, index:true
      t.belongs_to :specialties, index:true
      t.timestamps
    end
  end
end
