json.extract! expense, :id, :description, :value, :expense_category_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
