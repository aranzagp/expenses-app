# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get root_url
    assert_response :success
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', 'Home | Expenses App'
  end

  test 'should get expenses' do
    get static_pages_expenses_url
    assert_response :success
    assert_select 'title', 'Expenses | Expenses App'
  end

  test 'should get income' do
    get static_pages_income_url
    assert_response :success
    assert_select 'title', 'Income | Expenses App'
  end

  test 'should get balance' do
    get static_pages_balance_url
    assert_response :success
    assert_select 'title', 'Balance | Expenses App'
  end
end
