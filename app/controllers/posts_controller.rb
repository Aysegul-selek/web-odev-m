class PostsController < ApplicationController
	before_action :authenticate_user!,only:[:new,:edit,:destroy]
	def index 
		@posts=Post.all.order('created_at DESC')
		end
		def show 
			@post=Post.find(params[:id])
			@posts=Post.order("created_at DESC").limit(4).offset(1)
		end
		private
		def post_params
			params.require(:post).permit [:title,:body, :image]
		end



end
