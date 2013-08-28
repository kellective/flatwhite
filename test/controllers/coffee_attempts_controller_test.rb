require 'test_helper'

class CoffeeAttemptsControllerTest < ActionController::TestCase
  setup do
    @coffee_attempt = coffee_attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_attempt" do
    assert_difference('CoffeeAttempt.count') do
      post :create, coffee_attempt: { description: @coffee_attempt.description, name: @coffee_attempt.name, picture: @coffee_attempt.picture }
    end

    assert_redirected_to coffee_attempt_path(assigns(:coffee_attempt))
  end

  test "should show coffee_attempt" do
    get :show, id: @coffee_attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffee_attempt
    assert_response :success
  end

  test "should update coffee_attempt" do
    patch :update, id: @coffee_attempt, coffee_attempt: { description: @coffee_attempt.description, name: @coffee_attempt.name, picture: @coffee_attempt.picture }
    assert_redirected_to coffee_attempt_path(assigns(:coffee_attempt))
  end

  test "should destroy coffee_attempt" do
    assert_difference('CoffeeAttempt.count', -1) do
      delete :destroy, id: @coffee_attempt
    end

    assert_redirected_to coffee_attempts_path
  end
end
