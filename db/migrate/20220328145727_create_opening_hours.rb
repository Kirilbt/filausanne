class CreateOpeningHours < ActiveRecord::Migration[6.1]
  def change
    create_table :opening_hours do |t|
      t.jsonb :day_translations
      t.time :opens
      t.time :closes
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
