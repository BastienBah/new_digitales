class AddFkToIndef < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :indefinition, :variables
  end
end
