class AddColumnCategoryIdToExperience < ActiveRecord::Migration[5.1]
  def change
    add_column :experiences, :category_id, :integer
    add_index :experiences, :category_id
  end
end
