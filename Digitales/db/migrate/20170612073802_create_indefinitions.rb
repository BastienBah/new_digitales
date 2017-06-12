class CreateIndefinitions < ActiveRecord::Migration[5.0]
  def change
    create_table :indefinitions do |t|
      t.string :mot
      t.text :texte
      t.string :url

      t.timestamps
    end
  end
end
