class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :id_factura
      t.string :nombre_completo
      t.string :direccion
      t.string :ciudad
      t.integer :cantidad
      t.string :detalle_factura
      t.string :cod_venta
      t.string :vendedor
      t.float :precio_unitario
      t.float :precio_total

      t.timestamps
    end
  end
end
