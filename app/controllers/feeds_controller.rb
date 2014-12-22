class FeedsController < ApplicationController

  def index
    @feeds = Feed.all.order(id: :desc)
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def create
    feed_create = current_user.feeds.create(content: params[:feed][:content])
    redirect_to feeds_url
  end

  def comment
    comment_create = Feed.find(params[:comment][:feed_id]).comments.create(comment: params[:comment][:comment])
    redirect_to feed_url(params[:comment][:feed_id])
  end

end
