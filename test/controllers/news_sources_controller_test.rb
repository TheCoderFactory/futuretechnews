require 'test_helper'

class NewsSourcesControllerTest < ActionController::TestCase
  setup do
    @news_source = news_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_source" do
    assert_difference('NewsSource.count') do
      post :create, news_source: { favicon: @news_source.favicon, host_name: @news_source.host_name, name: @news_source.name }
    end

    assert_redirected_to news_source_path(assigns(:news_source))
  end

  test "should show news_source" do
    get :show, id: @news_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_source
    assert_response :success
  end

  test "should update news_source" do
    patch :update, id: @news_source, news_source: { favicon: @news_source.favicon, host_name: @news_source.host_name, name: @news_source.name }
    assert_redirected_to news_source_path(assigns(:news_source))
  end

  test "should destroy news_source" do
    assert_difference('NewsSource.count', -1) do
      delete :destroy, id: @news_source
    end

    assert_redirected_to news_sources_path
  end
end
