class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.decimal :upper_wage
      t.decimal :lower_wage
      t.text :contact
      t.boolean :is_hidden

      t.timestamps
    end
  end
end
