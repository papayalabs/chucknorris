require "application_system_test_case"

class JokesTest < ApplicationSystemTestCase
  setup do
    @joke = jokes(:one)
  end

  test "visiting the index" do
    visit jokes_url
    assert_selector "h1", text: "Jokes"
  end

  test "creating a Joke" do
    visit jokes_url
    click_on "New Joke"

    fill_in "Icon url", with: @joke.icon_url
    fill_in "Url", with: @joke.url
    fill_in "Value", with: @joke.value
    click_on "Create Joke"

    assert_text "Joke was successfully created"
    click_on "Back"
  end

  test "updating a Joke" do
    visit jokes_url
    click_on "Edit", match: :first

    fill_in "Icon url", with: @joke.icon_url
    fill_in "Url", with: @joke.url
    fill_in "Value", with: @joke.value
    click_on "Update Joke"

    assert_text "Joke was successfully updated"
    click_on "Back"
  end

  test "destroying a Joke" do
    visit jokes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joke was successfully destroyed"
  end
end
