require "test_helper"

class RegionalPokedexesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regional_pokedexes_index_url
    assert_response :success
  end
end
