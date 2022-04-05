class AddLanguageToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :language, :string
  end
end
