require 'test_helper'

class ModelBasicsControllerTest < ActionController::TestCase
  setup do
    @model_basic = model_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_basic" do
    assert_difference('ModelBasic.count') do
      post :create, model_basic: { date: @model_basic.date, post: @model_basic.post, title: @model_basic.title }
    end

    assert_redirected_to model_basic_path(assigns(:model_basic))
  end

  test "should show model_basic" do
    get :show, id: @model_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_basic
    assert_response :success
  end

  test "should update model_basic" do
    patch :update, id: @model_basic, model_basic: { date: @model_basic.date, post: @model_basic.post, title: @model_basic.title }
    assert_redirected_to model_basic_path(assigns(:model_basic))
  end

  test "should destroy model_basic" do
    assert_difference('ModelBasic.count', -1) do
      delete :destroy, id: @model_basic
    end

    assert_redirected_to model_basics_path
  end
end
