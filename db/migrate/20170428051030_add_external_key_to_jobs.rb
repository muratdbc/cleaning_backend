class AddExternalKeyToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :external_key, :string
    add_column :jobs, :external_source, :string
  end
end
