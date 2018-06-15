class AgentActivity < ApplicationRecord
  belongs_to :agent, foreign_key: :agent_id
end
