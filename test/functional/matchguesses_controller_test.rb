require 'test_helper'

class MatchguessesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matchguesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matchguess" do
    assert_difference('Matchguess.count') do
      post :create, :matchguess => { }
    end

    assert_redirected_to matchguess_path(assigns(:matchguess))
  end

  test "should show matchguess" do
    get :show, :id => matchguesses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => matchguesses(:one).to_param
    assert_response :success
  end

  test "should update matchguess" do
    put :update, :id => matchguesses(:one).to_param, :matchguess => { }
    assert_redirected_to matchguess_path(assigns(:matchguess))
  end

  test "should destroy matchguess" do
    assert_difference('Matchguess.count', -1) do
      delete :destroy, :id => matchguesses(:one).to_param
    end

    assert_redirected_to matchguesses_path
  end
end
