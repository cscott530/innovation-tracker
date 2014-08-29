require 'test_helper'

class OrganizationInnovationsControllerTest < ActionController::TestCase
  setup do
    @organization_innovation = organization_innovations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_innovations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_innovation" do
    assert_difference('OrganizationInnovation.count') do
      post :create, organization_innovation: {  }
    end

    assert_redirected_to organization_innovation_path(assigns(:organization_innovation))
  end

  test "should show organization_innovation" do
    get :show, id: @organization_innovation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_innovation
    assert_response :success
  end

  test "should update organization_innovation" do
    patch :update, id: @organization_innovation, organization_innovation: {  }
    assert_redirected_to organization_innovation_path(assigns(:organization_innovation))
  end

  test "should destroy organization_innovation" do
    assert_difference('OrganizationInnovation.count', -1) do
      delete :destroy, id: @organization_innovation
    end

    assert_redirected_to organization_innovations_path
  end
end
