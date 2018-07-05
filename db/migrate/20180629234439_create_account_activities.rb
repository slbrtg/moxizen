class CreateAccountActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :account_activities do |t|
      t.integer :total_calls
      t.integer :total_outbound_calls
      t.integer :total_call_duration
      t.integer :total_voicemails
      t.integer :total_calls_abandoned_in_queue
      t.integer :total_calls_outside_business_hours
      t.integer :total_hold_time
      t.integer :total_wrap_up_time
      t.integer :total_inbound_calls
      t.integer :average_queue_wait_time
      t.timestamps
    end
  end
end
