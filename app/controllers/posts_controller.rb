class PostsController < ApplicationController
	before_action :authenticate_account, only: [:new]
	
	def index
		if params[:tag]
			@posts = Post.tagged_with(params[:tag])
		else
			@posts = Post.all.order('id desc')
		end
	end

	def index_videos
		
	end

	def create
		@post = Post.new(post_params)
	    if @post.save
	      redirect_to root_path
	    else
	      render :new
	    end	
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	private 

	def post_params
		params.require(:post).permit(:title, :image, :url, :description ,:content, :bootsy_image_gallery_id, :tag_list)
	end
end
