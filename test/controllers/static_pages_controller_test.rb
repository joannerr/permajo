require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get presentation" do
    get static_pages_presentation_url
    assert_response :success
  end

end
