class AddDateToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :date, :datetime
  end
end