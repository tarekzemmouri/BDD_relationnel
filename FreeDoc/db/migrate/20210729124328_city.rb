class City < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|

      t.string :city_name
      add_reference :city, :doctors, foreign_key: true
      add_reference :city, :patients, foreign_key: true
      add_reference :city, :appointments, foreign_key: true
      #   Petit détail assez important dans la façon d'écrire la migration : dans add_reference :articles, :user, foreign_key: true, "articles" est au pluriel car il fait référence à la table. Par contre "user" est au singulier car on a un seul user par article.


      t.timestamps
    end
  end
end
