class AgentActivity < ApplicationRecord
  validates :agent_id, :calls_accepted, :calls_denied, :calls_missed, :online_time,
  :available_time, :total_call_duration, :total_talk_time, :total_wrap_up_time,
  :started_transfers, :accepted_transfers, :calls_put_on_hold, :total_hold_time, 
  presence: true
end
