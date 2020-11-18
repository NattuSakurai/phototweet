class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.create(tweet_params)
    if tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id]) 
    tweet.update(tweet_params)
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end
end
