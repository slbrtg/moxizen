class AgentActivityController < ApplicationController


  # save_activity should run automatically as a cron job, controller method is around for dev purposes
  def save_activity
    AgentActivity.save_activity
  rescue StandardError => e
    puts e
  end

  # Method that returns individual agent data
  def agent_activity
    activity_query = 'DATE(created_at) >= ? and agent_id = ?'
    req_days = Date.today-request.headers['HTTP_REQ_DAYS'].to_i
    agent_id = Agent.where('name = ?', request.headers['HTTP_AGENT_NAME'])[0].id

    render json: AgentActivity.where(activity_query, req_days, agent_id)
  rescue StandardError => e
    puts e
  end



end
