class IndefinitionsPortraits < ActiveRecord::Migration[5.0]
  def change
    create_table :indefinitions_portraits do |t|
      t.belongs_to :indefinition
      t.belongs_to :portrait
    end
  end
end
