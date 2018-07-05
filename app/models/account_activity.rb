class AccountActivity < ApplicationRecord
  validates :total_calls, :total_outbound_calls, :total_call_duration, :total_voicemails,
  :total_calls_abandoned_in_queue, :total_calls_outside_business_hours, :total_hold_time,
  :total_wrap_up_time, :total_inbound_calls, :total_outbound_calls, :average_queue_wait_time,
  presence: true

  def self.save_account_activity
    talk = Talk.new
    activity = talk.account_overview['account_overview']
    new_account_activity = AccountActivity.new
    new_account_activity.total_calls = activity['total_calls']
    new_account_activity.total_outbound_calls = activity['total_outbound_calls']
    new_account_activity.total_call_duration = activity['total_call_duration']
    new_account_activity.total_voicemails = activity['total_voicemails']
    new_account_activity.total_calls_abandoned_in_queue = activity['total_calls_abandoned_in_queue']
    new_account_activity.total_calls_outside_business_hours = activity['total_calls_outside_business_hours']
    new_account_activity.total_hold_time = activity['total_hold_time']
    new_account_activity.total_wrap_up_time = activity['total_wrap_up_time']
    new_account_activity.total_inbound_calls = activity['total_inbound_calls']
    new_account_activity.average_queue_wait_time = activity['average_queue_wait_time']
    new_account_activity.save
  end
end
