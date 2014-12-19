class FeedsController < ApplicationController

  def index
    @feeds = Feed.all #.to_json(:include => :user)
  end

  def show
    @feed = Feed.find(params[:id])
  end

end
