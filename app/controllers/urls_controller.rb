class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to urls_path
    else
      flash[:error] = @url.errors.full_messages
      redirect_to new_url_path
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
