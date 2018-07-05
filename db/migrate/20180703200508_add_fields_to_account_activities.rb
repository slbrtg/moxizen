class AddFieldsToAccountActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :account_activities, :total_calls_outside_business_hours, :integer
    add_column :account_activities, :total_hold_time, :integer
    add_column :account_activities, :total_wrap_up_time, :integer
  end
end
