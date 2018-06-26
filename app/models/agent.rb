class Agent < ApplicationRecord
  has_many :agent_activities
  validates :agent_id, uniqueness: true
end
