class AddDescuentoToBill < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :descuento, :float
  end
end
