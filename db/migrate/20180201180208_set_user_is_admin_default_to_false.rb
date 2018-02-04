class SetUserIsAdminDefaultToFalse < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :is_admin, false
  end
end
