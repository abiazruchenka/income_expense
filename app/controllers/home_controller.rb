class HomeController < ApplicationController

  def index

    @summary =[]
    current_user.expense_categories.all.each do|expense_category|
      if params[:select_category] != '1'
        @summary += expense_category.expenses.all
      end
    end

    current_user.income_categories.all.each do|income_category|
      if params[:select_category] != '2'
        @summary += income_category.incomes.all
      end
    end
    if params[:datepicker] && params[:datepicker].present?
      @summary.select!{ |m| (m.date.time.strftime("%m/%d/%Y") if m.date) == params[:datepicker].to_time.strftime("%m/%d/%Y")}
    end
    @summary.sort_by! { |m| [m.created_at, m.updated_at].max }.reverse!
    @summary.sort_by! { |m| [m.date ? 0 : 1, m.date] }
  end

end