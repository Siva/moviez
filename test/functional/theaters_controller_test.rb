require 'test_helper'

class TheatersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theater" do
    assert_difference('Theater.count') do
      post :create, :theater => { }
    end

    assert_redirected_to theater_path(assigns(:theater))
  end

  test "should show theater" do
    get :show, :id => theaters(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => theaters(:one).id
    assert_response :success
  end

  test "should update theater" do
    put :update, :id => theaters(:one).id, :theater => { }
    assert_redirected_to theater_path(assigns(:theater))
  end

  test "should destroy theater" do
    assert_difference('Theater.count', -1) do
      delete :destroy, :id => theaters(:one).id
    end

    assert_redirected_to theaters_path
  end
end
