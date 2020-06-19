# frozen_string_literal: true

require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @expense = Expense.new(amount: 30.00)
  end

  test 'should be valid' do
    assert @expense.valid?
  end

  test 'amount should be present' do
    @expense.amount = nil
    assert_not @expense.valid?
  end
end
