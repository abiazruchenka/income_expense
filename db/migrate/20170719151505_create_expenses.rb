class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :description
      t.decimal :value, precision: 10, scale: 2
      t.belongs_to :expense_category, foreign_key: true

      t.timestamps
    end
  end
end
