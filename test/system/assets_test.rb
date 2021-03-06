require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "creating a Asset" do
    visit assets_url
    click_on "New Asset"

    fill_in "Assigned", with: @asset.Assigned
    fill_in "Make", with: @asset.Make
    fill_in "Model", with: @asset.Model
    fill_in "Serial", with: @asset.Serial
    fill_in "Type", with: @asset.Type
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "updating a Asset" do
    visit assets_url
    click_on "Edit", match: :first

    fill_in "Assigned", with: @asset.Assigned
    fill_in "Make", with: @asset.Make
    fill_in "Model", with: @asset.Model
    fill_in "Serial", with: @asset.Serial
    fill_in "Type", with: @asset.Type
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset" do
    visit assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset was successfully destroyed"
  end
end
