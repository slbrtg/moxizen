class TalkController < ApplicationController
  def account_overview
    render json: talk.account_overview
  end
end
