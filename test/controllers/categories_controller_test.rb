# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get new_category_path
    assert_response :success
  end
end
