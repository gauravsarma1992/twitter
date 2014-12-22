class FeedsController < ApplicationController

  def index
    @feeds = Feed.all.order(id: :desc) #.to_json(:include => :user)
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def create
    f = current_user.feeds.create(content: params[:feed][:content])
    redirect_to feeds_url
  end

  def comment
    c = Feed.find(params[:comment][:feed_id]).comments.create(comment: params[:comment][:comment])
    redirect_to action: "show", id: params[:comment][:feed_id]
  end

end
