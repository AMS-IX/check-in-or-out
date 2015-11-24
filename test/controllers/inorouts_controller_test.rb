require 'test_helper'

class InoroutsControllerTest < ActionController::TestCase
  setup do
    @inorout = inorouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inorouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inorout" do
    assert_difference('Inorout.count') do
      post :create, inorout: { RMA: @inorout.RMA, checkin: @inorout.checkin, checkout: @inorout.checkout, date: @inorout.date, name: @inorout.name, serials: @inorout.serials, testing: @inorout.testing }
    end

    assert_redirected_to inorout_path(assigns(:inorout))
  end

  test "should show inorout" do
    get :show, id: @inorout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inorout
    assert_response :success
  end

  test "should update inorout" do
    patch :update, id: @inorout, inorout: { RMA: @inorout.RMA, checkin: @inorout.checkin, checkout: @inorout.checkout, date: @inorout.date, name: @inorout.name, serials: @inorout.serials, testing: @inorout.testing }
    assert_redirected_to inorout_path(assigns(:inorout))
  end

  test "should destroy inorout" do
    assert_difference('Inorout.count', -1) do
      delete :destroy, id: @inorout
    end

    assert_redirected_to inorouts_path
  end
end
