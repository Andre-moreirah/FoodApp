require "test_helper"

class Admin::OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in admins(:one)
    @order = orders(:one)
  end

  test "should get index" do
    get admin_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_order_url
    assert_response :success
  end

  test "should create admin_order" do
    assert_difference("Order.count") do
      post admin_orders_url, params: { order: { address: @order.address, customer_email: @order.customer_email, fullfiled: @order.fullfiled, total: @order.total } }
    end

    assert_redirected_to admin_order_url(Order.last)
  end

  test "should show admin_order" do
    get admin_order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_order_url(@order)
    assert_response :success
  end

  test "should update admin_order" do
    patch admin_order_url(@order), params: { order: { address: @order.address, customer_email: @order.customer_email, fullfiled: @order.fullfiled, total: @order.total } }
    assert_redirected_to admin_order_url(@order)
  end

  test "should destroy admin_order" do
    order = Order.create!(address: "Rua de Exemplo, 999", customer_email: "delete@example.com", fullfiled: false, total: 10)

    assert_difference("Order.count", -1) do
      delete admin_order_url(order)
    end

    assert_redirected_to admin_orders_url
  end
end
