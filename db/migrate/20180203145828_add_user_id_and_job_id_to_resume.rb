class AddUserIdAndJobIdToResume < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :user_id, :integer
    add_column :resumes, :job_id, :integer
  end
end
