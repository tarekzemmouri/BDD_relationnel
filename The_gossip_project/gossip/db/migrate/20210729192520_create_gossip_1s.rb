class CreateGossip1s < ActiveRecord::Migration[6.0]
  def change
    create_table :gossip_1s do |t|
      t.string :title
      t.text :content

      t.belongs_to :user, index:true
      t.timestamps
    end
  end
end
