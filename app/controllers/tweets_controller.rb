class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
    Tweet.create(tweet_params)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

end