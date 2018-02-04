class ChangeWagesColumnNameInJob < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :upper_wage, :wage_upper_bound
    rename_column :jobs, :lower_wage, :wage_lower_bound
  end
end
