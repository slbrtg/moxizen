class ApplicationController < ActionController::API
  def talk
    @talk ||= Talk.new
  end

  def agent
    @agent ||= Agent.new
  end

  def agent_activity
    @agent_activity ||= Agent.new
  end
end
