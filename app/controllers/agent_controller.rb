class AgentController < ApplicationController
  def save_agents
    json_data = talk.agents_activity
    json_data['agents_activity'].each do |agent|
      new_agent = Agent.new
      new_agent.name = agent['name']
      new_agent.avatar_url = agent['avatar_url']
      new_agent.agent_id = agent['agent_id']
      new_agent.save
    end
  end
end
