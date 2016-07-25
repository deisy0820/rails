class Bill < ApplicationRecord
	 validates :detalle_factura, :precio_unitario, :cod_venta, :id_factura,  presence: true
	 validates :nombre_completo ,:ciudad, :vendedor , format: { with: /\A[a-zA-Z]+\z/,
    message: "solo se permiten letras" }

    before_save :total
    before_save :calcular_iva


     def total

     	self.precio_total = self.precio_unitario  *  self.cantidad 
     end

     def calcular_iva
     	self.iva = self.precio_total*4/29
     end
end
