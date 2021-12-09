require "test_helper"

class BaseItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_item = base_items(:one)
  end

  test "should get index" do
    get base_items_url
    assert_response :success
  end

  test "should get new" do
    get new_base_item_url
    assert_response :success
  end

  test "should create base_item" do
    assert_difference("BaseItem.count") do
      post base_items_url, params: { base_item: { model_type_id: @base_item.model_type_id, path: @base_item.path } }
    end

    assert_redirected_to base_item_url(BaseItem.last)
  end

  test "should show base_item" do
    get base_item_url(@base_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_base_item_url(@base_item)
    assert_response :success
  end

  test "should update base_item" do
    patch base_item_url(@base_item), params: { base_item: { model_type_id: @base_item.model_type_id, path: @base_item.path } }
    assert_redirected_to base_item_url(@base_item)
  end

  test "should destroy base_item" do
    assert_difference("BaseItem.count", -1) do
      delete base_item_url(@base_item)
    end

    assert_redirected_to base_items_url
  end
end
