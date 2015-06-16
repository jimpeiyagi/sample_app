class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    else
      render :layout => "second_layout"
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def nosetai
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def noritai
    @microposts = Micropost.all
  end
end
