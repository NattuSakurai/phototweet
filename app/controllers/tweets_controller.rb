class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
  end
  def new
    @tweet = Tweet.new
  end
end
