class AddDateFieldToIncomes< ActiveRecord::Migration[5.1]
  def change
    add_column :incomes, :date, :datetime
  end
end
