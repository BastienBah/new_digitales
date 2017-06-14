class VariableIndef < ActiveRecord::Migration[5.0]
  def change
    create_table :indefinitions_variables do |t|
      t.belongs_to :variable
      t.belongs_to :indefinition
    end
  end
end
