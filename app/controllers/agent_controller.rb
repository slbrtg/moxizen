class AgentController < ApplicationController
  # talk inherited from Application Controller, returns Talk.new

  def save_agents
    talk.agents_activity['agents_activity'].each do |agent|
      new_agent = Agent.new
      new_agent.name = agent['name']
      new_agent.avatar_url = agent['avatar_url']
      new_agent.id = agent['agent_id']
      new_agent.save
    end
  end
end
