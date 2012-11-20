require 'test_helper'

class OrderPicturesControllerTest < ActionController::TestCase
  setup do
    @order_picture = order_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_picture" do
    assert_difference('OrderPicture.count') do
      post :create, order_picture: @order_picture.attributes
    end

    assert_redirected_to order_picture_path(assigns(:order_picture))
  end

  test "should show order_picture" do
    get :show, id: @order_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_picture
    assert_response :success
  end

  test "should update order_picture" do
    put :update, id: @order_picture, order_picture: @order_picture.attributes
    assert_redirected_to order_picture_path(assigns(:order_picture))
  end

  test "should destroy order_picture" do
    assert_difference('OrderPicture.count', -1) do
      delete :destroy, id: @order_picture
    end

    assert_redirected_to order_pictures_path
  end
end
