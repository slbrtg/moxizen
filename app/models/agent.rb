class Agent < ApplicationRecord
  validates :id, uniqueness: true
  validates :name, :id, :avatar_url, presence: true

  def self.save_agents
    talk = Talk.new
    talk.agents_activity['agents_activity'].each do |agent|
      new_agent = Agent.new
      new_agent.name = agent['name']
      new_agent.avatar_url = agent['avatar_url']
      new_agent.id = agent['agent_id']
      new_agent.save
    end
  end
end
