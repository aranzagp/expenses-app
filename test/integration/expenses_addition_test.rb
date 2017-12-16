require 'test_helper'

class ExpensesAdditionTest < ActionDispatch::IntegrationTest
  test "invalid expenses addition information" do
    get expenses_new_path
    assert_no_difference 'Expense.count' do
      post expenses_path, params: { expense: { amount:  nil,
                                         date: "user@invalid",
                                         place:              "foo",
                                         category: "bar" } }
    end
    assert_template 'expenses/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'

  end

  test "valid expenses addition information" do
    get expenses_new_path
    assert_difference 'Expense.count', 1 do
      post expenses_path, params: { expense: { amount:  20,
                                         date: "11/27/2017",
                                         place:              "kiosco",
                                         category: "Comida" } }
    end
    follow_redirect!
    assert_template 'expenses/show'
    assert_not flash[:success].empty?
  end

end
