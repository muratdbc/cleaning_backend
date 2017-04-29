class AddIsActiveToJobs < ActiveRecord::Migration[5.0]
  def change
     add_column :jobs, :is_active, :boolean, default: true
     add_column :jobs, :is_deleted, :boolean, default: false
  end
end
