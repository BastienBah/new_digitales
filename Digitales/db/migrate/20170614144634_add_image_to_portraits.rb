class AddImageToPortraits < ActiveRecord::Migration[5.0]
  def change
    add_column :portraits, :image, :string
  end
end
