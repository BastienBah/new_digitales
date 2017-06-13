class VariablePortrait < ActiveRecord::Migration[5.0]
  def change
    create_table :portraits_variables do |t|
      t.belongs_to :variable
      t.belongs_to :portrait
    end

    create_table :variables_indefinitions do |t|
      t.belongs_to :variable
      t.belongs_to :indefinition
    end

  end
end
