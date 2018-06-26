class ApplicationController < ActionController::API
  def talk
    @talk ||= Talk.new
  end
end
