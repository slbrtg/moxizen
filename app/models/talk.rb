class Talk < ApplicationRecord
  include HTTParty
  base_uri 'https://moxiworks.zendesk.com/api/v2/channels/voice/stats'

  def initialize
    @auth = {
      username: Rails.application.secrets.api_username,
      password: Rails.application.secrets.api_token,
    }
  end

  def account_overview
    self.class.get('/account_overview.json', basic_auth: @auth)
  end

  def agents_activity
    self.class.get('/agents_activity.json', basic_auth: @auth)
  end
end
