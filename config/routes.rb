Rails.application.routes.draw do
  get '/api/talk/account_overview' => 'talk#account_overview'
  get '/api/talk/agents_activity' => 'talk#agents_activity'
  get '/api/agents/save_agents' => 'agent#save_agents'
  get '/api/activity/save_activity' => 'agent_activity#save_activity'
end
