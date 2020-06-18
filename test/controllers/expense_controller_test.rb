require 'test_helper'

class ExpenseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_expense_path
    assert_response :success
  end

end
