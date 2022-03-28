class CreateServiceCommodities < ActiveRecord::Migration[6.1]
  def change
    create_table :service_commodities do |t|
      t.references :commodity, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
