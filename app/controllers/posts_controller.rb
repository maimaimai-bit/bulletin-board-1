class PostsController < ApplicationController
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.expires_on = params[:expires_on]
    @post.board_id = params[:board_id]
    
    if @post.save
      redirect_to "/boards/#{@post.board_id}", notice: "Post created successfully."
    else
      redirect_to "/boards/#{params[:board_id]}", alert: "Post could not be created."
    end
  end
end 
