class AddUrgentToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :urgent, :boolean, default: false
  end
end
