class FeedsController < ApplicationController

  def index
    @feeds = Feed.all.order(id: :desc) #.to_json(:include => :user)
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def create
    f = Feed.new
    f.content = params[:feed][:content] 
    f.user_id = params[:feed][:user_id]
    f.save
    redirect_to feeds_url
    # render plain: params[:feed]["content"]
  end

  def comment
    c = Comment.new
    c.comment = params[:comment][:comment] 
    c.feed_id = params[:comment][:feed_id]
    c.save
    redirect_to action: "show", id: params[:comment][:feed_id]
    # render plain: params[:comment].inspect 
  end

end
