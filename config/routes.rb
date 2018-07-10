Rails.application.routes.draw do

  # Saves agents to the DB, can also be used to update in case there is a new agent
  get '/api/agents/save_agents' => 'agent#save_agents'

  # Currently used to save every agent's activity daily
  get '/api/activity/save_activity' => 'agent_activity#save_activity'

  # Saves the account's daily activity
  get '/api/account_activity/save_account_activity' => 'account_activity#save_account_activity'

  # The Meat and Potatoes, retrieves agent stats by day, week, month, and year
  get '/api/activity/agent_activity' => 'agent_activity#agent_activity'

  # Retrieves every record from the account
  get '/api/activity/account_activity' => 'account_activity#account_activity'

end
