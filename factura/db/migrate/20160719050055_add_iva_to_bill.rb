class AddIvaToBill < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :iva, :float
  end
end
