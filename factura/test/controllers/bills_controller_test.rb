require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get bills_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_url
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post bills_url, params: { bill: { cantidad: @bill.cantidad, ciudad: @bill.ciudad, cod_venta: @bill.cod_venta, detalle_factura: @bill.detalle_factura, direccion: @bill.direccion, id_factura: @bill.id_factura, nombre_completo: @bill.nombre_completo, precio_total: @bill.precio_total, precio_unitario: @bill.precio_unitario, vendedor: @bill.vendedor } }
    end

    assert_redirected_to bill_url(Bill.last)
  end

  test "should show bill" do
    get bill_url(@bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_url(@bill)
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { cantidad: @bill.cantidad, ciudad: @bill.ciudad, cod_venta: @bill.cod_venta, detalle_factura: @bill.detalle_factura, direccion: @bill.direccion, id_factura: @bill.id_factura, nombre_completo: @bill.nombre_completo, precio_total: @bill.precio_total, precio_unitario: @bill.precio_unitario, vendedor: @bill.vendedor } }
    assert_redirected_to bill_url(@bill)
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete bill_url(@bill)
    end

    assert_redirected_to bills_url
  end
end
