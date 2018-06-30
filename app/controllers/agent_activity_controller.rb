class AgentActivityController < ApplicationController
  # talk inherited from Application Controller, returns Talk.new

  # Should run automatically as a cron job, controller method
  # is around for dev purposes
  def save_activity
    AgentActivity.save_activity
  rescue
    puts 'failed to save agent activity'
  end
end
