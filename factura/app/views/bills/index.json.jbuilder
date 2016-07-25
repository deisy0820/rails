json.array!(@bills) do |bill|
  json.extract! bill, :id, :id_factura, :nombre_completo, :direccion, :ciudad, :cantidad, :detalle_factura, :cod_venta, :vendedor, :precio_unitario, :precio_total
  json.url bill_url(bill, format: :json)
end
