require 'test_helper'

class InnovationsControllerTest < ActionController::TestCase
  setup do
    @innovation = innovations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:innovations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create innovation" do
    assert_difference('Innovation.count') do
      post :create, innovation: { caption: @innovation.caption, description: @innovation.description, name: @innovation.name, order: @innovation.order }
    end

    assert_redirected_to innovation_path(assigns(:innovation))
  end

  test "should show innovation" do
    get :show, id: @innovation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @innovation
    assert_response :success
  end

  test "should update innovation" do
    patch :update, id: @innovation, innovation: { caption: @innovation.caption, description: @innovation.description, name: @innovation.name, order: @innovation.order }
    assert_redirected_to innovation_path(assigns(:innovation))
  end

  test "should destroy innovation" do
    assert_difference('Innovation.count', -1) do
      delete :destroy, id: @innovation
    end

    assert_redirected_to innovations_path
  end
end
