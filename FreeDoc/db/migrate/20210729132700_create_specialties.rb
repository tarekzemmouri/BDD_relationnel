class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :specialties
      add_reference :specialties, :doctors, foreign_key: true
      t.timestamps
    end
  end
end
