require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get about_url
    assert_response :success
  end

  def test_the_truth
    assert true
  end
end
