Rails.application.routes.draw do
  # Non-production, used to test Zendesk API
  get '/api/talk/account_overview' => 'talk#account_overview'
  get '/api/talk/agents_activity' => 'talk#agents_activity'

  # Saves agents to the DB, can also be used to update in case there is a new agent
  get '/api/agents/save_agents' => 'agent#save_agents'

  # Currently used to save every agent's activity daily
  get '/api/activity/save_activity' => 'agent_activity#save_activity'

  # The Meat and Potatoes, retrieves the stats by day, week, month, and year
  get '/api/activity/one_day_all' => 'agent_activity#one_day_all'
  get '/api/activity/one_week_all' => 'agent_activity#one_week_all'
  get '/api/activity/one_month_all' => 'agent_activity#one_month_all'
  get '/api/activity/one_year_all' => 'agent_activity#one_year_all'

  get '/api/activity/one_day' => 'agent_activity#one_day'
  get '/api/activity/seven_days' => 'agent_activity#seven_days'
  get '/api/activity/thirty_days' => 'agent_activity#thirty_days'
  get '/api/activity/sixty_days' => 'agent_activity#sixty_days'
  get '/api/activity/ninety_days' => 'agent_activity#ninety_days'
  get '/api/activity/one_year' => 'agent_activity#one_year'

  # Saves the account's daily activity
  get '/api/account_activity/save_account_activity' => 'account_activity#save_account_activity'
end
