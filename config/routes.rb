Rails.application.routes.draw do
  get '/api/talk/account_overview' => 'talk#account_overview'
  get '/api/talk/agents_activity' => 'talk#agents_activity'

  get '/api/agents/save_agents' => 'agent#save_agents'

  get '/api/activity/save_activity' => 'agent_activity#save_activity'
  get '/api/activity/one_day' => 'agent_activity#one_day'
  get '/api/activity/one_week' => 'agent_activity#one_week'
  get '/api/activity/one_month' => 'agent_activity#one_month'
  get '/api/activity/one_year' => 'agent_activity#one_year'

  get '/api/account_activity/save_account_activity' => 'account_activity#save_account_activity'
end
