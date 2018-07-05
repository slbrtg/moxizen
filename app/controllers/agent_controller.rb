class AgentController < ApplicationController
  # talk inherited from Application Controller, returns Talk.new

  # Used to save and update all agents
  def save_agents
    Agent.save_agents
  rescue StandardError => e
    puts e
  end
end
