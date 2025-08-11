require "test_helper"

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "admin_signed_in? returns false when user lacks admin method" do
    controller = ApplicationController.new
    user = User.new
    controller.stub :current_user, user do
      assert_not controller.admin_signed_in?
    end
  end
end
