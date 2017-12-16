require 'test_helper'

class ExpenseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get expenses_new_url
    assert_response :success
  end

end
