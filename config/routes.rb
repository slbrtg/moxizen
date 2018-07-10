Rails.application.routes.draw do
  # Non-production, used to test Zendesk API
  get '/api/talk/account_overview' => 'talk#account_overview'
  get '/api/talk/agents_activity' => 'talk#agents_activity'

  # Saves agents to the DB, can also be used to update in case there is a new agent
  get '/api/agents/save_agents' => 'agent#save_agents'

  # Currently used to save every agent's activity daily
  get '/api/activity/save_activity' => 'agent_activity#save_activity'

  # The Meat and Potatoes, retrieves the stats by day, week, month, and year
  get '/api/activity/agent_activity' => 'agent_activity#agent_activity'
  get '/api/activity/all_activity' => 'agent_activity#all_activity'


  # Saves the account's daily activity
  get '/api/account_activity/save_account_activity' => 'account_activity#save_account_activity'
end
