require 'test_helper'

class DirectivesControllerTest < ActionController::TestCase
  setup do
    @directive = directives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directive" do
    assert_difference('Directive.count') do
      post :create, directive: { instructions: @directive.instructions, name: @directive.name }
    end

    assert_redirected_to directive_path(assigns(:directive))
  end

  test "should show directive" do
    get :show, id: @directive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directive
    assert_response :success
  end

  test "should update directive" do
    patch :update, id: @directive, directive: { instructions: @directive.instructions, name: @directive.name }
    assert_redirected_to directive_path(assigns(:directive))
  end

  test "should destroy directive" do
    assert_difference('Directive.count', -1) do
      delete :destroy, id: @directive
    end

    assert_redirected_to directives_path
  end
end
