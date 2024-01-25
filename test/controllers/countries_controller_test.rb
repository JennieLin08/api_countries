require "test_helper"

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get countries_home_url
    assert_response :success
  end
end
