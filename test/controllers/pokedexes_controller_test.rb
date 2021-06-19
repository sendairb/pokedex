require "test_helper"

class PokedexesControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get pokedexes_main_url
    assert_response :success
  end
end
