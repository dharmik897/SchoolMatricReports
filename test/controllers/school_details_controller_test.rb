require 'test_helper'

class SchoolDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_details_index_url
    assert_response :success
  end

end
