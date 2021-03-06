# frozen_string_literal: true

class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.float :amount
      t.string :date
      t.string :place
      t.string :category

      t.timestamps
    end
  end
end
