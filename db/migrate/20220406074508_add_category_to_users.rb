class AddCategoryToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :category, :integer
  end
end
