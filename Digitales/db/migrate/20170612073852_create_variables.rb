class CreateVariables < ActiveRecord::Migration[5.0]
  def change
    create_table :variables do |t|
      t.string :titre
      t.text :description

      t.timestamps
    end
  end
end
