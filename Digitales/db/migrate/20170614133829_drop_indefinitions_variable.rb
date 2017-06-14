class DropIndefinitionsVariable < ActiveRecord::Migration[5.0]
  def change
    drop_table :indefinitions_variables
  end
end
