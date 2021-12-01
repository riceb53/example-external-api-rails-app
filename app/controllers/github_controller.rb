class GithubController < ApplicationController
  def authorize
    response = HTTP
      .headers("Accept" => "application/json")
      .post("https://github.com/login/oauth/access_token?client_id=#{Rails.application.credentials.github[:client_id]}&client_secret=#{Rails.application.credentials.github[:client_secret]}&code=#{params[:code]}")
    access_token = response.parse["access_token"]
    render json: response.parse
  end

  def profile
    response = HTTP
      .headers("Authorization" => "Token #{params[:github_access_token]}")
      .get("https://api.github.com/user")
    render json: response.parse
  end
end
