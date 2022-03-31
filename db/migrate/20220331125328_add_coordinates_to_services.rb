class AddCoordinatesToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :latitude, :float
    add_column :services, :longitude, :float
  end
end
