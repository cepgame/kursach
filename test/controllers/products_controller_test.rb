require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { amt_in_stock: @product.amt_in_stock, base_price: @product.base_price, current_price: @product.current_price, full_desc: @product.full_desc, img_id_list: @product.img_id_list, min_amt_in_order: @product.min_amt_in_order, name: @product.name, short_desc: @product.short_desc, ven_code: @product.ven_code }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { amt_in_stock: @product.amt_in_stock, base_price: @product.base_price, current_price: @product.current_price, full_desc: @product.full_desc, img_id_list: @product.img_id_list, min_amt_in_order: @product.min_amt_in_order, name: @product.name, short_desc: @product.short_desc, ven_code: @product.ven_code }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
