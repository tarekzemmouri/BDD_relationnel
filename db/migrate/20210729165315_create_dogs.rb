class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :breed
      t.integer :age

      
      add_reference :dogs, :cities, index: {:unique=>true}, foreign_key: true
      t.timestamps
    end
  end
end
