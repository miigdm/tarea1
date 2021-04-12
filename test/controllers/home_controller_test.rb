require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get shows" do
    get home_shows_url
    assert_response :success
  end

  test "should get seasons" do
    get home_seasons_url
    assert_response :success
  end

  test "should get episodes" do
    get home_episodes_url
    assert_response :success
  end

  test "should get characters" do
    get home_characters_url
    assert_response :success
  end

  test "should get quotes" do
    get home_quotes_url
    assert_response :success
  end
end
