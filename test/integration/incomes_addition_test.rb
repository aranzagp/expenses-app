require 'test_helper'

class IncomesAdditionTest < ActionDispatch::IntegrationTest
  test "invalid income addition information" do
    get new_income_path
    assert_no_difference 'Income.count' do
      post incomes_path, params: { income: { amount:  nil,
                                         date: "user@invalid",
                                         category: "bar" } }
    end
    assert_template 'incomes/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'

  end

  test "valid income addition information" do
    get new_income_path
    assert_difference 'Income.count', 1 do
      post incomes_path, params: { income: { amount:  20,
                                         date: "11/27/2017",
                                         category: "Comida" } }
    end
    follow_redirect!
    assert_template 'incomes/show'
    assert_not flash[:success].empty?
  end
end
