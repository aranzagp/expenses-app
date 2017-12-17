class RemovePlaceFromIncomes < ActiveRecord::Migration[5.1]
  def change
    remove_column :incomes, :place, :string
  end
end
