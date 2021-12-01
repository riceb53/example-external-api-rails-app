class PagesController < ApplicationController
  def newsapi_headlines
    # p Rails.application.credentials
    response = HTTP
      .get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{Rails.application.credentials.new_api}")
    render json: response.parse
  end
end
