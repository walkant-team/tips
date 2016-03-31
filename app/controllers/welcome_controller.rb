class WelcomeController < ApplicationController
  def index
  	@posts = Post.all.sample(3)
  	@video_post = Post.all.sample(3)
  	@hangout_post = Post.all.sample(3)
  end
end
