require "test_helper"

class Admin::StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in admins(:one)
    @stock = stocks(:one)
  end

  test "should get index" do
    get admin_product_stocks_url(@stock.product)
    assert_response :success
  end

  test "should get new" do
    get new_admin_product_stock_url(@stock.product)
    assert_response :success
  end

  test "should create admin_stock" do
    assert_difference("Stock.count") do
      post admin_product_stocks_url(@stock.product), params: { stock: { amount: @stock.amount, size: @stock.size } }
    end

    assert_redirected_to admin_product_stock_url(@stock.product, Stock.last)
  end

  test "should show admin_stock" do
    get admin_product_stock_url(@stock.product, @stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_product_stock_url(@stock.product, @stock)
    assert_response :success
  end

  test "should update admin_stock" do
    patch admin_product_stock_url(@stock.product, @stock), params: { stock: { amount: @stock.amount, size: @stock.size } }
    assert_redirected_to admin_product_stock_url(@stock.product, @stock)
  end

  test "should destroy admin_stock" do
    assert_difference("Stock.count", -1) do
      delete admin_product_stock_url(@stock.product, @stock)
    end

    assert_redirected_to admin_product_stocks_url(@stock.product)
  end
end
