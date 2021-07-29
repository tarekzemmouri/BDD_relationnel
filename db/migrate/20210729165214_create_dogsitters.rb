class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.integer :age

      add_reference :dogsitters, :cities, index: {:unique=>true}, foreign_key: true
      t.timestamps
    end
  end
end
