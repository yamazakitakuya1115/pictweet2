class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(:id)
    tweet.delete
    redirect_to root_path
  end

  private

  def tweet_params
    params.permit(:content)
  end

end