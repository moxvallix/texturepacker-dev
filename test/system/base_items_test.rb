require "application_system_test_case"

class BaseItemsTest < ApplicationSystemTestCase
  setup do
    @base_item = base_items(:one)
  end

  test "visiting the index" do
    visit base_items_url
    assert_selector "h1", text: "Base items"
  end

  test "should create base item" do
    visit base_items_url
    click_on "New base item"

    fill_in "Model type", with: @base_item.model_type_id
    fill_in "Path", with: @base_item.path
    click_on "Create Base item"

    assert_text "Base item was successfully created"
    click_on "Back"
  end

  test "should update Base item" do
    visit base_item_url(@base_item)
    click_on "Edit this base item", match: :first

    fill_in "Model type", with: @base_item.model_type_id
    fill_in "Path", with: @base_item.path
    click_on "Update Base item"

    assert_text "Base item was successfully updated"
    click_on "Back"
  end

  test "should destroy Base item" do
    visit base_item_url(@base_item)
    click_on "Destroy this base item", match: :first

    assert_text "Base item was successfully destroyed"
  end
end
