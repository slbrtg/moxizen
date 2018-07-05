class AgentActivityController < ApplicationController

  # Should run automatically as a cron job, controller method is around for dev purposes
  def save_activity
    AgentActivity.save_activity
  rescue StandardError => e
    puts e
  end

  def one_day
    puts AgentActivity.where('DATE(created_at) = ?', Date.today-1)
  end

  def one_week
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-7).length
  end

  def one_month
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-30).length
  end

  def one_year
    puts AgentActivity.where('DATE(created_at) >= ?', Date.today-365).length
  end
end
