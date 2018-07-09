class AgentActivityController < ApplicationController

  # save_activity should run automatically as a cron job, controller method is around for dev purposes
  def save_activity
    AgentActivity.save_activity
  rescue StandardError => e
    puts e
  end

  # Returns agent id by using the agent name passed in header
  def get_agent_id
    agent_id = Agent.where('name = ?', request.headers['HTTP_AGENT_NAME'])[0].id
    puts "AGENT_ID: #{agent_id}"
    agent_id
  end

  # Methods that return individual agent data
  def one_day
    puts AgentActivity.where('DATE(created_at) = ? and agent_id = ?', Date.today-1, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def seven_days
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-7, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def thirty_days
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-30, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def sixty_days
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-60, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def ninety_days
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-90, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def half_year
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-180, get_agent_id).length
  rescue StandardError => e
    puts e
  end

  def one_year
    puts AgentActivity.where('DATE(created_at) >= ? and agent_id = ?', Date.today-365, get_agent_id).length
  rescue StandardError => e
    puts e
  end


  # Methods that return all agent data
  def one_day_all
    puts AgentActivity.where('DATE(created_at) = ?', Date.today-1).length
  rescue StandardError => e
    puts e
  end

  def seven_days_all
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-7).length
  rescue StandardError => e
    puts e
  end

  def thirty_days_all
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-30).length
  rescue StandardError => e
    puts e
  end

  def one_year_all
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-365).length
  rescue StandardError => e
    puts e
  end
end
