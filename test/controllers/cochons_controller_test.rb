require 'test_helper'

class CochonsControllerTest < ActionController::TestCase
  setup do
    @cochon = cochons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cochons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cochon" do
    assert_difference('Cochon.count') do
      post :create, cochon: { age: @cochon.age, description: @cochon.description, kg: @cochon.kg, name: @cochon.name }
    end

    assert_redirected_to cochon_path(assigns(:cochon))
  end

  test "should show cochon" do
    get :show, id: @cochon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cochon
    assert_response :success
  end

  test "should update cochon" do
    patch :update, id: @cochon, cochon: { age: @cochon.age, description: @cochon.description, kg: @cochon.kg, name: @cochon.name }
    assert_redirected_to cochon_path(assigns(:cochon))
  end

  test "should destroy cochon" do
    assert_difference('Cochon.count', -1) do
      delete :destroy, id: @cochon
    end

    assert_redirected_to cochons_path
  end
end
