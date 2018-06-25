class TalkController < ApplicationController
  def account_overview
    render json: talk.account_overview
  end

  def agents_activity
    talk.agents_activity
  end
end
