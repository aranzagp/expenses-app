# frozen_string_literal: true

class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.string :date
      t.string :place
      t.string :category

      t.timestamps
    end
  end
end
