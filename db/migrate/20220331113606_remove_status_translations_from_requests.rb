class RemoveStatusTranslationsFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :status_translations, :jsonb
  end
end
