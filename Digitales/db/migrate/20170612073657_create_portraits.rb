class CreatePortraits < ActiveRecord::Migration[5.0]
  def change
    create_table :portraits do |t|
      t.string :titre
      t.string :auteur
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
