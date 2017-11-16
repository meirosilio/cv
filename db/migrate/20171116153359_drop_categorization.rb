class DropCategorization < ActiveRecord::Migration[5.1]
  def change
    drop_table :categorizations
  end
end
