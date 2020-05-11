require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get scrapper" do
    get pages_scrapper_url
    assert_response :success
  end

end
