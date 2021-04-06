require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Api", with: @character.api_id
    fill_in "Appearance", with: @character.appearance
    fill_in "Better call saul appearance", with: @character.better_call_saul_appearance
    fill_in "Category", with: @character.category
    fill_in "Img", with: @character.img
    fill_in "Name", with: @character.name
    fill_in "Nickname", with: @character.nickname
    fill_in "Occupation", with: @character.occupation
    fill_in "Portrayed", with: @character.portrayed
    fill_in "Status", with: @character.status
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Api", with: @character.api_id
    fill_in "Appearance", with: @character.appearance
    fill_in "Better call saul appearance", with: @character.better_call_saul_appearance
    fill_in "Category", with: @character.category
    fill_in "Img", with: @character.img
    fill_in "Name", with: @character.name
    fill_in "Nickname", with: @character.nickname
    fill_in "Occupation", with: @character.occupation
    fill_in "Portrayed", with: @character.portrayed
    fill_in "Status", with: @character.status
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
