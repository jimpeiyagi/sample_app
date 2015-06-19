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
      @nosetai  =  Micropost.where(ride_on_flg: false).paginate(page: params[:page])
      @noritai  =  Micropost.where(ride_on_flg: true).paginate(page: params[:page])
  end

  def noritai
      @noritai  =  Micropost.where(ride_on_flg: true).paginate(page: params[:page])
      @nosetai  =  Micropost.where(ride_on_flg: false).paginate(page: params[:page])
  end

  def norinose
      @noritai  =  Micropost.where(ride_on_flg: true).paginate(page: params[:page])
      @nosetai  =  Micropost.where(ride_on_flg: false).paginate(page: params[:page])
  end
end
