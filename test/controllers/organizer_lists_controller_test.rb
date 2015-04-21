require 'test_helper'

class OrganizerListsControllerTest < ActionController::TestCase
  setup do
    @organizer_list = organizer_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizer_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizer_list" do
    assert_difference('OrganizerList.count') do
      post :create, organizer_list: { description: @organizer_list.description, title: @organizer_list.title }
    end

    assert_redirected_to organizer_list_path(assigns(:organizer_list))
  end

  test "should show organizer_list" do
    get :show, id: @organizer_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizer_list
    assert_response :success
  end

  test "should update organizer_list" do
    patch :update, id: @organizer_list, organizer_list: { description: @organizer_list.description, title: @organizer_list.title }
    assert_redirected_to organizer_list_path(assigns(:organizer_list))
  end

  test "should destroy organizer_list" do
    assert_difference('OrganizerList.count', -1) do
      delete :destroy, id: @organizer_list
    end

    assert_redirected_to organizer_lists_path
  end
end
