class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :type
      t.string :name
      t.jsonb :description_translations
      t.string :address
      t.string :phone_number
      t.string :website
      t.float :price
      t.integer :capacity

      t.timestamps
    end
  end
end
