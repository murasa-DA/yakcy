require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get article_new_url
    assert_response :success
  end

end
